//
//  Shop.swift
//  Touchdown
//
//  Created by Farih Muhammad on 16/08/2024.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
