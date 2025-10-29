//
//  MockDataService.swift
//  MyTravelUI
//
//  Created by Iqbal Alhadad on 29/10/25.
//

import Foundation

class MockDataService {
    static let instance = MockDataService()
    
    private init() {}
}

extension MockDataService {
    func getCategories() -> [Category] {
        [
            .init(name: "Mountain", image: .mountain_icon),
            .init(name: "Waterfalll", image: .waterfall),
            .init(name: "River", image: .river),
        ]
    }
}

extension MockDataService {
    func getMountains() -> [Destination] {
        [
            .init(title: "Rinjani Mountain",
                  location: "lombok, Indonesia",
                  description: "",
                  amount: "$48",
                  image: .mountain_image_1),
            .init(title: "Bromo Mountain",
                  location: "East Java, Indonesia",
                  description: "",
                  amount: "$34",
                  image: .mountain_image_2)
        ]
    }
}


extension MockDataService {
    func getPopularDestination() -> [Destination] {
       [ .init(title: "The Pink Beach",
                          location: "Komodo Island, Indonesia",
                          description: "This exceptional beach gets its striking color from microscopis",
                          amount: "$40",
                          image: .beach_image_1),
              
              .init(title: "Meru Tower",
                                location: "Bali, Indonesia",
                                description: "A meru tower or pelinggih meru is the principal shrine of Balinese",
                                amount: "$36",
                    image: .tower_image_1),
                    
                    .init(title: "Toraja Land",
                                  location: "South Sulawesi, Indonesia",
                                  description: "Toraja is the land of destination tourist",
                                  amount: "$47",
                          image: .land_image_1)
        
                    ]
    }
}
