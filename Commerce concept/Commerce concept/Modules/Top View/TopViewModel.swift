//
//  TopViewModel.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/3/22.
//

import Foundation
import SwiftUI


struct TopViewModel: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let image: String
}

extension TopViewModel {
    static var topViewItems = [
        TopViewModel(title: "Phones", image: "phones"),
        TopViewModel(title: "Computers", image: "computers"),
        TopViewModel(title: "Health", image: "health"),
        TopViewModel(title: "Books", image: "books"),
        TopViewModel(title: "Books", image: "books")
    ]
}
