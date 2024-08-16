//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Farih Muhammad on 16/08/2024.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
//                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
            .padding(.horizontal)
            
            // DETAIL BOTTOM PART
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVORITE            
            
            // ADD TO CART
            
            Spacer()
        } //: VSTACK
//        .ignoresSafeArea()
        .background(
            sampleProduct.rgb
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
            ProductDetailView()
                .previewLayout(.fixed(width: 375, height: 812))
    }
}
