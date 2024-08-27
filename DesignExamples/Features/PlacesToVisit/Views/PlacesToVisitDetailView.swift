//
//  PlacesToVisitDetail.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 21.08.2024.
//

import SwiftUI

struct PlacesToVisitDetailView: View {
    let images: [String] = ["image_1", "image_2", "image_3"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack {
                    Image("image_3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 320, height: 320)
                        .clipShape(.circle)
                    
                    CircleImageWithBorder(image: "image_1", width: 60, height: 60)
                        .offset(x: 150, y: 10)
                    
                    CircleImageWithBorder(image: "image_2", width: 50, height: 50)
                        .offset(x: 130, y: 80)
                    
                    CircleImageWithBorder(image: "image_3", width: 40, height: 40)
                        .offset(x: 90, y: 130)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                PlaceDetailBody()
                    .padding(.top, 32)
                    .padding(.horizontal)
            }
        }
        .scrollIndicators(.hidden)
        .safeAreaInset(edge: .bottom) {
            SelectDatesSection(images: images)
        }
        .navigationTitle("Global Odyssey")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PlacesToVisitDetailView()
    }
}
