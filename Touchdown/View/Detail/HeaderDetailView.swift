//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Farih Muhammad on 16/08/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundColor(.white)
    }
}

// MARK: - PREVIEW

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(
                Color.gray
            )
    }
}
