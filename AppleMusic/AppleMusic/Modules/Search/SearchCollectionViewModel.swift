//
//  SearchCollectionViewModel.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 27.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import Foundation

import UIKit

protocol ReusableView: AnyObject {
     static var identifier: String { get }
 }

 struct SearchModel {
    let id = UUID()
     var image: UIImage?
    var label: String?
 }

 extension SearchModel {
     static var items = [
        SearchModel(image: UIImage(named: "dance"), label: ("Хорошее настроение")),
        SearchModel(image: UIImage(named: "photo1"),label: ("Спокойствие")),
        SearchModel(image: UIImage(named: "photo2"),label: ("Хиты")),
        SearchModel(image: UIImage(named: "image4"),label: ("Хип-хоп")),
        SearchModel(image: UIImage(named: "image6"),label: ("Поп")),
        SearchModel(image: UIImage(named: "image"),label: ("Чарты")),
        SearchModel(image: UIImage(named: "image5"),label: ("Восход")),
        SearchModel(image: UIImage(named: "hit1"),label: ("Спорт")),
        SearchModel(image: UIImage(named: "hit2"),label: ("Велнес")),
        SearchModel(image: UIImage(named: "hit3"),label: ("Танцевальная")),
        SearchModel(image: UIImage(named: "phones"),label: ("Спорт")),
        SearchModel(image: UIImage(named: "dance"),label: ("Сон")),
     ]
 }
