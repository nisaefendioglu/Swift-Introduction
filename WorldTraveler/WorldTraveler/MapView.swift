//
//  MapView.swift
//  WorldTraveler
//
//  Created by Nisa on 7.05.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    static var regions: [MKCoordinateRegion] = [
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.0, longitude: 29.0), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)),
        
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.509865, longitude: -0.118092), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
    ]
    
    
    @State var region: MKCoordinateRegion = regions[0]
    
    @State var selectedIndex = 0
    
    var body: some View {
       Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.top)
            .overlay(
                VStack{
                Picker("Picker", selection: $selectedIndex, content:{
                    Text("MAP_CITY_ISTANBUL").tag(0)
                    Text("MAP_CITY_LONDON").tag(1)
                }).pickerStyle(SegmentedPickerStyle())
                  .padding()
                  .onChange(of: selectedIndex, perform:{
                      value in
                      self.region = MapView.regions[selectedIndex]
                  })
                  Spacer()
    }
)
}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

