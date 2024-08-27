//
//  PopularPlaceImage.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 21.08.2024.
//

import SwiftUI

struct PopularPlaceImage: View {
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 220, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    PopularPlaceImage(image: "image_1")
}
