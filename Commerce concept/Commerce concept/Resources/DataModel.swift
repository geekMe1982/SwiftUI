//
//  Data.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/10/22.
//

import Foundation
import SwiftUI
import Combine


// MARK: - Store

struct Store: Codable {
    let homeStore: [HomeStore]
    let bestSeller: [BestSeller]

    enum CodingKeys: String, CodingKey {
        case homeStore = "home_store"
        case bestSeller = "best_seller"
    }
    
}

// MARK: - BestSeller
struct BestSeller: Codable {
    let id: Int
    let isFavorites: Bool
    let title: String
    let priceWithoutDiscount, discountPrice: Int
    let picture: String

    enum CodingKeys: String, CodingKey {
        case id
        case isFavorites = "is_favorites"
        case title
        case priceWithoutDiscount = "price_without_discount"
        case discountPrice = "discount_price"
        case picture
    }
}

// MARK: - HomeStore
struct HomeStore: Codable {
    let id: Int
    let isNew: Bool?
    let title, subtitle: String
    let picture: String
    let isBuy: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case isNew = "is_new"
        case title, subtitle, picture
        case isBuy = "is_buy"
    }
}


//class Api {
//
//    @State private var results = [HomeStore]()
//
//    func loadData() async {
//
//        let url = "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175"
//
//        guard let url = URL(string: url) else {
//            print("invalid URL")
//            return
//        }
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//
//            if let decodedResponse = try? JSONDecoder().decode(Store.self, from: data){
//                results = decodedResponse.homeStore
//                print(results)
//            }
//
//        } catch {
//            print("invalid data")
//
//        }
//
//    }
//
//}
