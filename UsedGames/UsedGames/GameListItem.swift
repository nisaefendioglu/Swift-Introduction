//
//  GameListItem.swift
//  UsedGames
//
//  Created by Nisa on 13.05.2022.
//

import SwiftUI

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

struct GameListItem_Previews: PreviewProvider {
    static var previews: some View {
        
        let item =  GameListItem(game: Game(random: true))
            .padding(.horizontal)
        .previewLayout(.sizeThatFits)        
        Group {
           item
           item
            .preferredColorScheme(.dark)
           item
            .environment(\.sizeCategory, .accessibilityExtraLarge)
           item
            .previewLayout(.sizeThatFits)
            .environment(\.locale, Locale(identifier: "tr"))
        }
    }
}
