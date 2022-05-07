//
//  WorldTravelerApp.swift
//  WorldTraveler
//
//  Created by Nisa on 6.05.2022.
//

import SwiftUI

@main
struct WorldTravelerApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        HStack{
                            Text("Conversion")
                            Image(systemName: "thermometer")
                        }
                    }
                MapView()
                    .tabItem{
                        HStack{
                            Text("Map")
                            Image(systemName: "map")
                        }
                    }
            }.accentColor(.orange)
        }
    }
}
