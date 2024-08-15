//
//  ProductModel.swift
//  Touchdown
//
//  Created by Farih Muhammad on 15/08/2024.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var rgb: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    var formattedPrice: String { return "$\(price)"}
}
