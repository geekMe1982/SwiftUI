//
//  Filter.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/20/22.
//

import SwiftUI

struct Filter: View {
    
    @Environment (\.presentationMode) var presentationMode
    @Environment (\.dismiss) var dismiss
    
    @State private var selection = ""
    
    let colors = ["Red", "Green", "Blue", "Black", "Tartan"]
    let menu = ["Brand", "Price", "Size"]
    
    var body: some View {
        VStack {
            HStack(spacing: 60) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                        .padding()
                        .frame(width: 37, height: 37)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                Text("Filter options")
                Button (action: {}) {
                    Button(action: {}) {
                        Text("Done")
                            .padding()
                            .background(.red)
                            .foregroundColor(.white)
                    }.frame(width: 86, height: 37)
                }
                .cornerRadius(10)
            }.padding()
            
            VStack {
                List {
                    ForEach(menu, id: \.self){
                        Text($0)
                            .bold()
                        Picker("Brand", selection: $selection) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    .pickerStyle(.menu)
                }
            }
        }
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
    }
}
