//
//  ContentView.swift
//  UsedGames
//
//  Created by Nisa on 8.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var gameStore = GameStore()
    
    var body: some View {
        List {
            HStack {
            Spacer()
                Button(action: {
                gameStore.createGame()
            }, label: {
            Text("Add")
    }).buttonStyle(BorderlessButtonStyle())
}
    ForEach(gameStore.games) { (game) in
        GameListItem(game: game)
        }
    .animation(.easeIn)
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
            
        }
        .padding(.vertical, 6)
    }
}
