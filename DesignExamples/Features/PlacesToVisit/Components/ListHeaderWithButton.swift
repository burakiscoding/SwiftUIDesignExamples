//
//  ListHeaderWithButton.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 21.08.2024.
//

import SwiftUI

struct ListHeaderWithButton: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
            Spacer()
            Button("See all") {
                
            }
            .foregroundStyle(.myYellow)
        }
    }
}

#Preview {
    ListHeaderWithButton(title: "Popular\nChoice places")
}
