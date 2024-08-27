//
//  Favorite.swift
//  DesignExamples
//
//  Created by Burak Kurtarır on 20.08.2024.
//

import Foundation

struct Favorite: Identifiable {
    let id: UUID
    let name: String
    let tourName: String
    let image: String
    
    init(name: String, tourName: String, image: String) {
        self.id = UUID()
        self.name = name
        self.tourName = tourName
        self.image = image
    }
    
    static func examples() -> [Favorite] {
        return [
            Favorite(name: "Global", tourName: "Odyssey Tours", image: "image_1"),
            Favorite(name: "Global", tourName: "Odyssey Tours", image: "image_2"),
            Favorite(name: "Global", tourName: "Odyssey Tours", image: "image_1"),
            Favorite(name: "Global", tourName: "Odyssey Tours", image: "image_2"),
            Favorite(name: "Global", tourName: "Odyssey Tours", image: "image_1")
        ]
    }
}
