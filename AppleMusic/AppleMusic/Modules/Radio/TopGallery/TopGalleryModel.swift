//
//  TopGalleryModel.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 18.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import Foundation

struct TopGalleryItemModel: Identifiable, Hashable {
    var id = UUID()
    let category: String
    let albumTitle: String
    let description: String
    let image: String
}

extension TopGalleryItemModel {
    static var topGalleryItems = [

        TopGalleryItemModel(category: "Apple music 1 ON AIR . 0:00-1:00", albumTitle: "The Apple Music 1 List", description: "Apple Music", image: "applemusic1"),
        TopGalleryItemModel(category: "BRAND-NEW STATION", albumTitle: "Our brand-new home for hits", description: "more hits", image: "applemusic2"),
        TopGalleryItemModel(category: "BRAND-NEW STATION", albumTitle: "check out our new country station", description: "more hits", image: "apple-country"),
        TopGalleryItemModel(category: "Hip-Hop on the top", albumTitle: "Doggy Dogg", description: "new hits", image: "dog2"),
    ]
}
