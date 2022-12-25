//
//  Splash.swift
//  Commerce concept
//
//  Created by Adam Khalifa on 12/3/22.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.004, green: 0, blue: 0.208).edgesIgnoringSafeArea(.all)
                
                Ellipse()
                    .fill(Color(red: 1, green: 0.429, blue: 0.304, opacity: 1))
                    .frame(width: 132, height: 132)
                
                Text("Ecommerce \nConcept ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .position(x: 240, y: 337)
                    .foregroundColor(.white)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
