//
//  ContentView.swift
//  we split
//
//  Created by Adam Khalifa on 30.09.2022.
//

import SwiftUI

struct ContentView: View {
		@State private var count = 0
		@State private var name = ""
		@State private var student = "adam"
		@State private var subject = "math"
		@State private var checkAmount = 0.0
		@State private var numberOfPeople = 2
		let studentArray = ["adam", "john", "peter"]
		let subjects = ["math", "science", "history"]

		var body: some View {
				NavigationView {
						Form {
								Section{
										TextField("amount", value: $checkAmount, format:
														.currency(code: Locale.current.currencyCode ?? ("USD")))
										.keyboardType(.decimalPad)

										Picker("number of people", selection: $numberOfPeople) {
												ForEach(2..<10) {
														Text("\($0)")
												}
										}

										TextField("amount", value: $checkAmount, format:
														.currency(code: Locale.current.currencyCode ?? ("USD")))								}
						}.navigationTitle("SwiftUI")
				}
		}
}


struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
				ContentView()
		}
}
