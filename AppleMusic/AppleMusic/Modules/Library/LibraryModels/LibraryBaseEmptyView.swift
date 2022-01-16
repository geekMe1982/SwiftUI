//
//  LibraryBaseEmpty.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 16.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import SwiftUI

struct LibraryBaseEmptyView: View {
    var body: some View {
        VStack{
            Text("Ищете свою музыку?")
                .font(.system(size: 25, weight: .bold))
                .multilineTextAlignment(.center)
            Text("здесь пявится купленная Вами В iTunes Store Музыка")
                .font(.system(size: 18, weight: .thin))
                .frame(width: 280, height: 50)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

struct LibraryBaseEmpty_Previews: PreviewProvider {
    static var previews: some View {
        LibraryBaseEmptyView()
    }
}
