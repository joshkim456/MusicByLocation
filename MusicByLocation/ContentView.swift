//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Kim, Joshua (WING) on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var state = StateController()
    
    var body: some View {
        VStack {
            Text(state.artistNames)
            Text(state.lastKnownLocation)
            Spacer()
            Button("Find Music", action: {
                state.findMusic()
            })
        }
        .onAppear(perform: {
            state.requestAccessToLocationData()
            state.getArtists()
        })
    }
}

#Preview {
    ContentView()
}
