//
//  PlacesToVisitList.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 19.08.2024.
//

import SwiftUI

struct PlacesToVisitList: View {
    let continents: [String] = ["Asia", "Europe", "Africa", "Australia"]
    @State private var selectedContinent = "Asia"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                UserInfoCard()
                
                PlaceTitleView()
                    .padding(.top, 24)
                    .padding(.bottom, 24)
                
                ContinentPicker(continents: continents, selectedContinent: $selectedContinent)
                
                ListHeaderWithButton(title: "Popular\nChoice Places")
                    .padding(.top, 32)
                    .padding(.bottom, 12)
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 16) {
                        PopularPlaceImage(image: "image_1")
                        PopularPlaceImage(image: "image_2")
                    }
                }
                .scrollIndicators(.hidden)
                
                ListHeaderWithButton(title: "Favorites")
                    .padding(.top, 32)
                    .padding(.bottom, 12)
                
                LazyVStack(spacing: 16) {
                    ForEach(Favorite.examples()) { favorite in
                        FavoritesListRow(favorite: favorite)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
}

#Preview {
    PlacesToVisitList()
}
