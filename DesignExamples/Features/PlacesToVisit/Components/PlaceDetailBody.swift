//
//  PlaceDetailBody.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 23.08.2024.
//

import SwiftUI

struct PlaceDetailBody: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Global Odyssey Tours")
                .font(.title3)
                .foregroundStyle(.gray)
                .fontWeight(.semibold)
                
            Text("Georgia")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack {
                GroupBox {
                    Text("Travelling")
                        .foregroundStyle(Color(hex: 0x6b6d6e))
                        .fontWeight(.semibold)
                }
                .clipShape(Capsule())
                GroupBox {
                    Text("History")
                        .foregroundStyle(Color(hex: 0x6b6d6e))
                        .fontWeight(.semibold)
                }
                .clipShape(Capsule())
                Text("• Starts at 10:30")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
            
            
            Text("Grab your gear, lace up your boots and set out on a journey to conquer the heights and discover wonders of the world's.")
                .foregroundStyle(.gray)
                .fontWeight(.semibold)
                .padding(.top)
        }
    }
}

#Preview {
    PlaceDetailBody()
}
