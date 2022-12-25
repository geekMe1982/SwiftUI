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
                Image(systemName: "lightbulb")
                Text("Zihuatanejo, Gro")
                    .foregroundColor(.black)
                Image(systemName: expand ? "chevron.up" : "chevron.down")
                    .resizable()
                    .frame(width: 10, height: 10)
                
            }.onTapGesture {
                self.expand.toggle()
            }
            if expand {
                Button(action: {}) {
                    Text("Hello world")
                }
            }
        }.padding(.top)
    }
}

struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
        DropDown()
    }
}
