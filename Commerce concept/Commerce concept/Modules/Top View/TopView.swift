//
//  TopView.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/3/22.
//

import SwiftUI

struct TopView: View {
        
    let galleryItems = [GridItem(.flexible(minimum: 500))]
    
    private let items = TopViewModel.topViewItems
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: galleryItems, spacing: 23) {
                    ForEach(items, id: \.self) { items in
                        VStack {
                            Button(action: {}) {
                                HStack {
                                    Image(items.image)
                                        .frame(width: 73, height: 73, alignment: .center)
                                        .foregroundColor(.white)
                                }
                            }
                            .buttonStyle(MyButtonStyle())
                            Text(items.image)
                                .foregroundColor(.white)
                        }
                    }
                }.padding()
            }
            .frame(height: 110)
        }
    }
    
    struct MyButtonStyle: ButtonStyle {

      func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
          .background(configuration.isPressed ? Color.red : Color.white)
          .cornerRadius(50)
          .shadow(radius: 7)
      }
    }
    
    struct TopView_Previews: PreviewProvider {
        static var previews: some View {
            TopView()
        }
    }
}
