//
//  TopGalleryView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 19.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI

struct TopGalleryView: View {

    let galleryItems = [GridItem(.flexible(minimum: 200))]

    private let items = TopGalleryItemModel.topGalleryItems
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: galleryItems){

                ForEach(items, id: \.self) { item in

                    VStack{
                        Text(item.category)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 10))
                            .foregroundColor(.pink)
                        Text(item.albumTitle)
                            .frame(maxWidth: 370, alignment: .leading)
                            .font(.system(size: 20))
                            .frame(alignment: .leading)
                            .lineLimit(2)
                            .fixedSize(horizontal: false, vertical: true)

                        Text(item.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 20))
                            .foregroundColor(.secondary)
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 370.0, height: 230, alignment: .leading)
                            .cornerRadius(20)
                    }
                }
            }
        }.frame(height: 340)
    }
}

struct TopGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        TopGalleryView()
    }
}
