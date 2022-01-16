//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 02.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI

struct LibraryView: View {

    @State private var filterOn = false
    @State private var editMode = EditMode.active

    var body: some View {
        NavigationView{
            VStack{
                if filterOn {
                    LibraryItemListView()
                } else {
                    LibraryBaseEmptyView()
                }
            }.navigationBarTitle("Медиатека")
            .accentColor(.pink)
            .environment(\.editMode,
                         .constant(filterOn ? EditMode.active : EditMode.inactive))
            .navigationBarItems(trailing:
                                    Button(action: {filterOn.toggle()
                                    }, label:{
                                        if filterOn {
                                            Text("Править")
                                                .foregroundColor(.pink)

                                        } else {
                                            Text("Готова")
                                                .foregroundColor(.pink)

                                        }

                                    }))
        }
    }
}
