//
//  SelectDatesSection.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 23.08.2024.
//

import SwiftUI

struct SelectDatesSection: View {
    let images: [String]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 12) {
                Text("Just check-in")
                    .fontWeight(.semibold)
                HStack {
                    ZStack {
                        ForEach(Array(images.enumerated()), id: \.offset) { index, image in
                            CircleImageWithBorder(image: image, width: 40, height: 40, borderSize: 5)
                                .offset(x: CGFloat(index * 30))
                        }

                        Text("7+")
                            .background(
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 50, height: 50)
                            )
                            .offset(x: 90)
                    }
                }
            }
            Spacer()
            Button {
            } label: {
                Text("Select dates")
                    .padding(.vertical, 20)
                    .padding(.horizontal, 30)
                    .background(
                        Capsule()
                            .foregroundStyle(.yellow)
                    )
                    .foregroundStyle(Color.black)
                    .font(.title3)
                    .fontWeight(.semibold)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
        .background(
            Rectangle()
                .foregroundStyle(Color(hex: 0xedeef0))
                .clipShape(.rect(topLeadingRadius: 40, topTrailingRadius: 40))
                .ignoresSafeArea()
        )
    }
}

#Preview {
    SelectDatesSection(images: ["image_1", "image_2", "image_3"])
}
