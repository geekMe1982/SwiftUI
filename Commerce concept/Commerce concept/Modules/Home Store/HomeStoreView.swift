//
//  HomeStoreView.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/3/22.
//

import SwiftUI

struct HomeStoreView: View {
    
    @State var testok = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false){
                    HStack {
                        Text("Select Category")
                            .font(.title)
                            .fontWeight(.heavy)
                        Spacer()
                        Button(action: ({})) {
                            Text("View all")
                                .foregroundColor(.red)
                        }
                    }.padding()
                    
                    TopView()
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color("LightGray"))
                                .background(Color.white)
                                .cornerRadius(13)
                            HStack {
                                Image(systemName: "magnifyingglass")
                                TextField("Search ..", text: $testok)
                            }
                            .foregroundColor(.red)
                            .padding(.leading, 13)
                        }
                        Button(action:({})){
                            Image(systemName: "qrcode")
                                .frame(width: 34, height: 34, alignment: .center)
                                .background(.red)
                                .foregroundColor(.black)
                                .cornerRadius(50)
                        }
                        .padding()
                    }
                    HStack{
                        Text("Hot sales")
                            .font(.title)
                            .bold()
                        Spacer()
                        Button(action: {}){
                            Text("see more")
                                .foregroundColor(.red)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    
                    BannerView()
                    
                    HStack{
                        Text("Best seller")
                            .font(.title)
                            .bold()
                        Spacer()
                        Button(action: {}){
                            Text("see more")
                                .foregroundColor(.red)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    BestSellerView()
                    Spacer()
                }
                .padding(.top)
                .navigationBarHidden(true)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                    }
                }
                .background(.clear)
            }
            GeometryReader { geometry in
                ZStack {
                    Rectangle()
                        .background(Color(red: 1, green: 0, blue: 53))
                        .shadow(radius: 2)
                        .cornerRadius(30)
                        .frame(width: geometry.size.width, height: 70, alignment: .bottom)
                    HStack(spacing: 30){
                        Image("circle.dashed")
                        Text("Explore")
                        Image(systemName: "bag")
                        Image(systemName: "heart")
                        Image(systemName: "person")
                    }.foregroundColor(.white)
                }     .offset(y: geometry.size.height - 35)
            }
        }
    }
    
    struct HomeStoreView_Previews: PreviewProvider {
        static var previews: some View {
            HomeStoreView()
        }
    }
}
