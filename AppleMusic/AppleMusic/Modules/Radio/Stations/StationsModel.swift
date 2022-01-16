//
//  StationsModel.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 23.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import Foundation

struct StationsModel: Identifiable, Hashable {
    var id = UUID()
    let author: String
    let albumTitle: String
    let description: String
    let image: String
}



extension StationsModel {
    static var stationsItems = [
        
        StationsModel(author: "MIKE DEAN", albumTitle: "AT HOME WITH MIKE DEAN", description: "shares his personal playlist.", image: "dean1"),
        StationsModel(author: "BRAND-NEW STATION", albumTitle: "Our band-new home for hits", description: "more hits", image: "mothercov"),
        StationsModel(author: "BRAND-NEW STATION", albumTitle: "Our band-new home for hits", description: "more hits", image: "jeny"),
        StationsModel(author: "Hip-Hop on the top", albumTitle: "Doggy Dogg", description: "new hits", image: "inner"),
    ]
}


