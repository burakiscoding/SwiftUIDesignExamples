//
//  FavoritesListRow.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 21.08.2024.
//

import SwiftUI

struct FavoritesListRow: View {
    let favorite: Favorite
    
    var body: some View {
        HStack {
            Image(favorite.image)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading) {
                Text(favorite.name)
                Text(favorite.tourName)
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "ellipsis")
            }
            .foregroundStyle(.gray)
        }
        .padding(12)
        .cardBackground()
    }
}

#Preview {
    FavoritesListRow(favorite: Favorite.examples().first!)
}
