//
//  Data.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/10/22.
//

import Foundation

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

class Api {
    func getData(completion: @escaping ([BestSeller]) -> ()) {
        
        guard let url = URL(string: "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let decodedData = try! JSONDecoder().decode([BestSeller].self, from: data!)
            
            DispatchQueue.main.async {
                completion(decodedData)
            }
        }
        .resume()
    }
}
