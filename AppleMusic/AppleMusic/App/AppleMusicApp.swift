//
//  ContentView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 02.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI

struct AppleMusicApp: View {
    @State var current = 2

    var body: some View {

        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom),
               content: {

                TabView(selection:$current){
                    LibraryView()
                        .tag(0)
                        .tabItem {
                            Image(systemName: "music.note.house.fill")
                            Text("Медиатека")

                        }
                    RadioView()
                        .tag(1)
                        .tabItem {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")

                        }
                    SearchView()
                        .tag(2)
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Поиск")

                        }
                }
                MiniplayerView()
                    .opacity(0.8)
               })

    }

}
