//
//  ContentView.swift
//  DragonBallSwift
//
//  Created by Raúl Gallego Alonso on 29/5/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()

            
            
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                
                
                TabView {
                    WikiView()
                        .tabItem {
                            Label("Wiki", systemImage: "books.vertical.fill")
                        }
                    
                    SongListView(songs: SongsModel())
                        .tabItem {
                            Label("Reproductor", systemImage:"music.note")
                        }
                     
                    
                    GamesView()
                        .tabItem {
                            Label("Juegos", systemImage: "gamecontroller.fill")
                                .tint(.accentColor)
                        }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
