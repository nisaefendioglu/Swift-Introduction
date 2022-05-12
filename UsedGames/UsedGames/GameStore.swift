//
//  GameStore.swift
//  UsedGames
//
//  Created by Nisa on 8.05.2022.
//

import Foundation

class GameStore : ObservableObject {
    
    @Published var games: [Game] = []
    
    init() {}
    
    @discardableResult func createGame() -> Game {
        
        let game = Game(random: true)
        games.append(game)
        return game
    }
    
    func delete(at indexSet: IndexSet){
        games.remove(atOffsets: indexSet)
    }
    
}
