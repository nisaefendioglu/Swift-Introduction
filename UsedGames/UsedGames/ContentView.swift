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
    
    var body: some View {
        List {
            ForEach(gameStore.games) { (game) in
            GameListItem(game: game)
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
    }.padding(.top)
                .animation(.easeIn, value: gameStore.games)
                .overlay(
                    VStack {
                        HStack {
                            EditButton()
                            Spacer()
                            Button(action: {
                                gameStore.createGame()
                            }, label: {
                                Text("Add")
                            }).buttonStyle(BorderlessButtonStyle())
                        }
                        .padding()
                        .background(Color.barBackgroundColor.edgesIgnoringSafeArea(.top))
                        Spacer()
                    }
                ).actionSheet(item: $gameToDelete) { (game) -> ActionSheet in
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
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

