//
//  MiniPlayerView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 24.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI

struct MiniplayerView: View {
    var body: some View {
        HStack(spacing: 15) {
            Image("dog")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 47, height: 47)
                .padding(.leading)
                .cornerRadius(5)
                .shadow(radius: 4)
            Text("Now Playing")
                .font(.system(size: 18, weight: .regular, design: .default))
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.201))
                .padding(.leading, 5)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "play.fill")
                    .font(.title2)
                    .foregroundColor(.primary)
                    .padding(.trailing)
            })
            Button(action: {}, label: {
                Image(systemName: "forward.fill")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .padding(.trailing)
            })
        }
        .padding(.horizontal)
        .frame(height: 65)
        .background(Color(red: 0.965, green: 0.973, blue: 0.969))
        .offset(y: -49.2)
    }
}

struct MiniPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MiniplayerView()
    }
}
