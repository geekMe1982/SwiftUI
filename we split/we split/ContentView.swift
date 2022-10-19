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
		@FocusState private var amountIsFocused: Bool

		var totalPerPerson: Double {

				let peopleCount = Double(numberOfPeople + 2)
				let tipSelection = Double(tipPercentage)
				let tipValue = checkAmount / 100 * tipSelection
				let grandTotal = checkAmount + tipValue
				let amountPerPerson = grandTotal / peopleCount

				return amountPerPerson
		}

		var body: some View {
				NavigationView {
						Form {
								Section {
										TextField("amount", value: $checkAmount, format:
														.currency(code: Locale.current.currencyCode ?? "USD"))
										.keyboardType(.decimalPad)
										.focused($amountIsFocused)

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
										}
										.pickerStyle(.segmented)

								} header: {
										Text("pick the tip percentage you want to leave")
								}
								Section {
										Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
								}
						}
						.navigationTitle("We split")
						.toolbar{
								ToolbarItemGroup(placement: .keyboard) {
										Spacer()
										Button("Done"){
												amountIsFocused = false
										}
								}
						}
				}
		}
}

struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
				ContentView()
		}
}
