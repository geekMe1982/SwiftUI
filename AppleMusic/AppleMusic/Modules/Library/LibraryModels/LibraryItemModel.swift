//
//  LibraryItemModel.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 16.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import Foundation

struct LibraryItemModel: Identifiable, Hashable {
    var id = UUID()
    let title: String
    var icon: String
}

extension LibraryItemModel{

    static var listOfItems = [
        LibraryItemModel( title: "Плейлисты", icon: "music.note.list"),
        LibraryItemModel(title:"Артисты", icon: "music.mic"),
        LibraryItemModel(title:"Альбомы", icon: "square.stack"),
        LibraryItemModel(title:"Песни", icon: "music.note"),
        LibraryItemModel( title:"Телешоу", icon: "tv"),
        LibraryItemModel(title:"Видеоклипы", icon: "tv.music.note"),
        LibraryItemModel(title:"Жанры", icon: "guitars"),
        LibraryItemModel(title:"Сборники", icon: "person.2.square.stack"),
        LibraryItemModel(title:"Авторы",icon:"music.note.list"),
        LibraryItemModel( title:"Загружено", icon: "arrow.down.circle"),
        LibraryItemModel(title:"Домашняя коллекция",icon:"music.note.list"),
        LibraryItemModel(title:"Медиатека",icon: "music.note.list"),
        LibraryItemModel(title:"Слушать",icon: "play"),
        LibraryItemModel(title:"Обзор",icon: "play"),
        LibraryItemModel(title:"Поиск",icon: "magnifyingglass"),
    ]
}
