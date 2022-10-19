//
//  ContentView.swift
//  we split
//
//  Created by Adam Khalifa on 30.09.2022.
//

import SwiftUI

struct ContentView: View {

		@State private var checkAmount = 0.0
		@State private var numberOfPeople = 2
		@State private var tipPercentage = 15
		@State private var tipPercentages = [15, 20, 30, 40]

		var body: some View {
				NavigationView {
						Section {
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
										}
										Section {
												Picker("Tip percentage", selection: $tipPercentage) {
														ForEach(tipPercentages, id: \.self) {
																Text($0, format: .percent)
														}
												}												.pickerStyle(.segmented)

										} header: {
												Text("pick the tip percentage you want to leave")
										}
										Section {
												TextField("check amount", value: $checkAmount, format:
																.currency(code: Locale.current.currencyCode ?? ("USD")))
										}
								}
								.navigationTitle("We split")
						}
				}
		}
}

struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
				ContentView()
		}
}
