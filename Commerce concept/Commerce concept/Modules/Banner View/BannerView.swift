//
//  BannerView.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/7/22.
//

import SwiftUI


struct BannerView: View {
    
    @State private var results = [HomeStore]()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(alignment: .center, spacing: 0){
                ForEach (results, id: \.id) { item in
                    ZStack(alignment: .topLeading) {
                        Image("th")
                            .data(url: URL(string: item.picture)!)
                            .resizable()
                            .frame(width: 378, height: 221, alignment: .leading)
                            .cornerRadius(15)
                        VStack(alignment: .leading, spacing: 26) {
                            ZStack{
                                Ellipse()
                                    .frame(width: 27, height: 27, alignment: .center)
                                    .foregroundColor(.red)
                                Text("New")
                                    .font(.system(size: 11))
                            }
                            
                            VStack(alignment: .leading,spacing: 5){
                                Text(item.title)
                                    .fontWeight(.bold)
                                    .font(.system (size: 25))
                                    .foregroundColor(.white)
                                Text(item.subtitle)
                                    .font(.system (size: 11))
                            }
                            
                            Button ("Buy new", action: {})
                                .padding()
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300 , height: 23, alignment: .leading)
                                .cornerRadius(5)
                                .font(.system(size: 11))
                        }
                        .padding()
                        .foregroundColor(.white)
                    }
                    .padding()
                }
            }.task {
                await loadData()
            }
        }
    }
    
    func loadData() async {
        
        
        guard let url = URL(string: "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175") else {
            print("invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(Store.self, from: data){
                results = decodedResponse.homeStore
            }
        } catch {
            print("invalid data")
        }
    }
    
    struct BannerView_Previews: PreviewProvider {
        static var previews: some View {
            BannerView()
        }
    }
    
}

extension Image {
    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
        }
        return self
    }
}
