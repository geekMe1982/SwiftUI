//
//  RadioView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 07.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI
import Foundation



struct RadioView: View {
    var body: some View {

        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                Divider()
                TopGalleryView()
                Divider()
                Text("New Episodes")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 26))
                    .padding(.bottom)
                StationsView()
            }
            .padding()
            .navigationBarTitle("Radio")
        }
    }

    struct RadioView_Previews: PreviewProvider {
        static var previews: some View {
            RadioView()
        }
    }
}

