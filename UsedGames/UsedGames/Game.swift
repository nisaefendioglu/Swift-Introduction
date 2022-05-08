//
//  Game.swift
//  UsedGames
//
//  Created by Nisa on 8.05.2022.
//

import Foundation

//en tepedeki hali.
class Game: NSObject, Identifiable {
    
    var name: String
    var priceInDollars: Double
    var serialNumber: String
    var dateCreated: Date
    
    init(name: String, priceInDollars: Double, serialNumber: String){
        
        self.name = name
        self.priceInDollars = priceInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        
    }
    
    convenience init (random: Bool = false){
        
        if random{
            
            let conditions = ["New", "Mint", "Used"]
            var idx = arc4random_uniform(UInt32(conditions.count))
            let randomCondition = conditions[Int(idx)]
            
            let names = ["Resident Evil", "Gears of War", "Halo", "God of War"]
            idx = arc4random_uniform(UInt32(names.count))
            let randomName = names[Int(idx)]
            
            idx = arc4random_uniform(UInt32(6))
            
            let randomTitle = "\(randomCondition) \(randomName) \(Int(idx))"
            let serialNumber = UUID().uuidString.components(separatedBy: "-").first!
            let priceInDollars = arc4random_uniform(UInt32(70))
            
            self.init(name: randomTitle, priceInDollars: Double(priceInDollars), serialNumber: serialNumber)
            
           } else {
               
               self.init(name: "", priceInDollars: 0, serialNumber: "")
           }
            
        
    }
}

