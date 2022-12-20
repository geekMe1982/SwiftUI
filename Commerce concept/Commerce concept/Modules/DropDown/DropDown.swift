//
//  DropDown.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/18/22.
//

import SwiftUI

struct DropDown: View {
    
    @State var expand = false
    
    var body: some View {
        
        VStack(spacing: 30) {
            HStack {
                Text("Zihuatanejo, Gro")
                    .foregroundColor(.black)
                Image(systemName: expand ? "chevron.up" : "chevron.down")
                    .resizable()
                    .frame(width: 13, height: 11)
            }.onTapGesture {
                self.expand.toggle()
            }
            if expand {
            }
        }
        
    }
}

struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
        DropDown()
    }
}
