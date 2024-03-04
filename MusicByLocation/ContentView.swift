//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Kim, Joshua (WING) on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var locationHandler = LocationHandler()
    
    var body: some View {
        VStack {
            Text(locationHandler.lastKnownLocation)
            Spacer()
            Button("Find Music", action: {
                locationHandler.requestLocation()
            })
        }
        .onAppear(perform: {
            locationHandler.requestAuthorisation()
        })
    }
}

#Preview {
    ContentView()
}
