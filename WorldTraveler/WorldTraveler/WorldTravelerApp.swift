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
                            Text("TAB_CONVERSION")
                            Image(systemName: "thermometer")
                        }
                    }
                MapView()
                    .tabItem{
                        HStack{
                            Text("TAB_MAP")
                            Image(systemName: "map")
                        }
                    }
            }.accentColor(.orange)
        }
    }
}
