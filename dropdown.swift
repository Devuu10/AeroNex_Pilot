//
//  dropdown.swift
//  AeroNex_Pilot
//
//  Created by Devansh Agarwal on 29/02/24.
import SwiftUI

struct CitySelectorView: View {
    @State private var selectedCity: String = "Mumbai"
    let cities = ["Chennai", "Mumbai", "Delhi", "Bangalore", "Hyderabad"] // Add more cities here

    var body: some View {
        VStack {
            
            // Dropdown button
            Menu(selectedCity) {
                ForEach(cities, id: \.self) { city in
                    Button(action: {
                        selectedCity = city
                    }) {
                        Text(city)
                      
                       
                    }
                }
            }
            .padding()
        }
    }
}

struct CitySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        CitySelectorView()
    }
}
