//
//  SearchView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 27.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            SearchViewAdapter()
                .navigationBarTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
