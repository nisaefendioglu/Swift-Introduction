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
                        .background(Color.white.edgesIgnoringSafeArea(.top))
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

struct GameListItem: View {
    
    var game: Game
    var numberFormatter: NumberFormatter = Formatters.dollarFormatter
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 4.0){
                Text(game.name)
                    .font(.body)
                Text(game.serialNumber)
                    .font(.caption)
                    .foregroundColor(Color(white: 0.65))
            }
            Spacer()
            Text(NSNumber(value: game.priceInDollars), formatter: numberFormatter)
                .font(.title2)
                .foregroundColor(game.priceInDollars > 30 ? .blue : .gray)
                .animation(nil)
            
        }
        .padding(.vertical, 6)
    }
}
