//
//  PlaceTitleView.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 21.08.2024.
//

import SwiftUI

struct PlaceTitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Experience Your Summer in")
                .font(.system(size: 24))
            Text("Portugal")
                .font(.system(size: 36, weight: .semibold))
        }
    }
}

#Preview {
    PlaceTitleView()
}
