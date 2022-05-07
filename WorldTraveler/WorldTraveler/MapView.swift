//
//  MapView.swift
//  WorldTraveler
//
//  Created by Nisa on 7.05.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.0, longitude: 29.0), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
    
    var body: some View {
       Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.top)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
