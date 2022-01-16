//
//  LibraryItemListView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 16.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI
import Foundation

struct LibraryItemListView: View {

    private var categories = LibraryItemModel.listOfItems

    @State private var multiSelection = Set<UUID>()

    var body: some View {
            List(selection: $multiSelection) {
                ForEach(categories) {category in
                    HStack {
                        Image(systemName: category.icon)
                            .foregroundColor(.red)
                        Text(category.title)
                    }
                    .font(.system(size: 20))
                }
                .onMove(perform: { indices, newOffset in })
            }
            .listStyle(InsetListStyle())
        }
    
    }
