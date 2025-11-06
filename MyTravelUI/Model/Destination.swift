//
//  Destination.swift
//  MyTravelUI
//
//  Created by Iqbal Alhadad on 29/10/25.
//

import SwiftUI

struct Destination: Identifiable {
    let id = UUID().uuidString
    let title: String
    let location: String
    let description: String
    let amount: String
    let image: Image
}
