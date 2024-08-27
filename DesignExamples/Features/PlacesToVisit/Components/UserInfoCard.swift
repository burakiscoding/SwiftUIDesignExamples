//
//  UserInfoCard.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 21.08.2024.
//

import SwiftUI

struct UserInfoCard: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("avatar")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(.circle)
            VStack(alignment: .leading) {
                Text("Sherlock Holmes")
                    .font(.headline)
                Text("@sherlock_holmes")
                    .font(.callout)
            }
            .padding(.leading, 4)
            Spacer()
            Image(systemName: "line.3.horizontal.decrease")
                .imageScale(.large)
        }
    }
}

#Preview {
    UserInfoCard()
}
