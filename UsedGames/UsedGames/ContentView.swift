//
//  ContentView.swift
//  UsedGames
//
//  Created by Nisa on 8.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var gameStore = GameStore()
    
    @State var gameToDelete: Game?
    
    @ObservedObject var imageStore = ImageStore()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(gameStore.games) { (game) in
                    NavigationLink(destination : DetailView(game: game, gameStore: gameStore, imageStore: imageStore, name: game.name, price: game.priceInDollars,           selectedPhoto: imageStore.image(forKey: game.itemKey)
                    )){
                        GameListItem(game: game)
                    }
            }
                .onDelete(perform: {
                    indexSet in
                    self.gameToDelete = gameStore.game(at: indexSet)
                })
                .onMove (perform: {
                    indices,
                    newOffSet in
                    gameStore.move(indices: indices, to: newOffSet)
                }
            )
            }.listStyle(PlainListStyle())
            .navigationTitle("Used Games")
            .navigationBarItems(leading:                                 EditButton(), trailing: Button(action: {
            gameStore.createGame()
        }, label: {
            Text("Add")
        }))         .navigationBarTitleDisplayMode(.large)
                    .animation(.easeIn, value: gameStore.games)
                    .actionSheet(item: $gameToDelete) { (game) -> ActionSheet in
                        ActionSheet(
                            title: Text("Are you sure?"),
                            message: Text("You will delete \(game.name)"),
                            buttons: [
                                .cancel(),
                                .destructive(Text("Delete"), action: {
                                    if let indexSet = gameStore.indexSet(for: game) {
                                        gameStore.delete(at: indexSet)
                                    }
                                })
                            ])
                    }
        }.accentColor(.pink)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

