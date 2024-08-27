//
//  CircleImageWithBorder.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 22.08.2024.
//

import SwiftUI

struct CircleImageWithBorder: View {
    let image: String
    let width: CGFloat
    let height: CGFloat
    let borderSize: CGFloat
    
    init(image: String, width: CGFloat, height: CGFloat, borderSize: CGFloat = 10) {
        self.image = image
        self.width = width
        self.height = height
        self.borderSize = borderSize
    }
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
            .clipShape(.circle)
            .background(
                Circle()
                    .frame(width: width + borderSize, height: height + borderSize)
                    .foregroundStyle(.white)
            )
    }
}

#Preview {
    CircleImageWithBorder(image: "image_1", width: 80, height: 80)
        .preferredColorScheme(.dark)
}
