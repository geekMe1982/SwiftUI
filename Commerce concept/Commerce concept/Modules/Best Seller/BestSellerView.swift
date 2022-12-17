//
//  BestSellerView.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/13/22.
//

import SwiftUI

struct BestSellerView: View {
    
    @State private var results = [BestSeller]()
    
    private var gridItemLayout = [GridItem(.fixed(187)), GridItem(.fixed(187))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 10) {
                ForEach (results, id: \.id) { item in
                    VStack(alignment: .leading){
                        ZStack(alignment: .topTrailing){
                            Image("th")
                                .data(url: URL(string: item.picture)!)
                                .resizable()
                                .frame(minWidth: 0, maxWidth: 171, minHeight: 0, maxHeight: 181, alignment: .leading)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                            Image(systemName: "heart.fill")
                                .frame(width: 25, height: 25, alignment: .center)
                                .background(.white)
                                .foregroundColor(.red)
                                .cornerRadius(50)
                                .padding()
                                .shadow(radius: 5)
                        }
                        HStack{
                            Text("$\(item.priceWithoutDiscount)")
                                .bold()
                                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                                .font(.system(size: 16))
                            Text("$\(item.discountPrice)")
                                .strikethrough()
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                            
                        }
                        Text(item.title)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .font(.system(size: 11))
                    }//Vstack
                }//forEach
                
            }//lazyGrid
            .task {
                await loadData()
            }
            
            
        }//scrollView
        
        
    }//body
    
    func loadData() async {

        guard let url = URL(string: "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175") else {
            print("invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(Store.self, from: data){
                results = decodedResponse.bestSeller
            }
        } catch {
            print("invalid data")
        }
    }
    
    struct HomeStoreView_Previews: PreviewProvider {
        static var previews: some View {
            BestSellerView()
        }
    }
    
}
