//
//  StationsView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 23.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI

struct StationsView: View {

    private let items = StationsModel.stationsItems

    
    var body: some View {
        VStack(alignment: .leading){

            ForEach(items, id: \.self){ item in

                HStack(){
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120, alignment: .leading)
                        .cornerRadius(20)
                    VStack(alignment: .center){

                        Text(item.author)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 10))
                            .foregroundColor(.primary)
                        Text(item.albumTitle)
                            .frame(maxWidth: 300, alignment: .leading)
                            .font(.system(size: 15))
                            .frame(alignment: .leading)
                            .lineLimit(2)
                            .fixedSize(horizontal: false, vertical: true)

                        Text(item.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 20))
                            .foregroundColor(.secondary)
                        
                    }
                }


            }


        }
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
