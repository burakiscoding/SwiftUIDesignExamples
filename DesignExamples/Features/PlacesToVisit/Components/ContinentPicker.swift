//
//  ContinentPicker.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 21.08.2024.
//

import SwiftUI

struct ContinentPicker: View {
    let continents: [String]
    @Binding var selectedContinent: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 24) {
            ForEach(continents, id: \.self) { continent in
                Button {
                    selectedContinent = continent
                } label: {
                    Text(continent)
                        .overlay {
                            if continent == selectedContinent {
                                Text("•")
                                    .font(.title2)
                                    .padding(.top, 32)
                            }
                        }
                }
                .foregroundStyle(continent == selectedContinent ? .myYellow : .gray)
                .fontWeight(.semibold)
            }
        }
        .padding(.vertical, 24)
        .padding(.horizontal, 32)
        .cardBackground()
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    ContinentPicker(continents: ["Asia", "Europe", "Africa", "Australia"], selectedContinent: .constant("Asia"))
}
