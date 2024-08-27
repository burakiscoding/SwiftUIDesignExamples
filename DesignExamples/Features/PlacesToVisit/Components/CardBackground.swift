//
//  CardBackground.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 20.08.2024.
//

import SwiftUI

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.white, in: RoundedRectangle(cornerRadius: 20))
            .shadow(color: Color.gray.opacity(0.2), radius: 4, y: 2)
    }
}

extension View {
    func cardBackground() -> some View {
        modifier(CardBackground())
    }
}
