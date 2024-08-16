//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Farih Muhammad on 16/08/2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            HStack {
                 Spacer()
            }
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                RatingsSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //: SCROLL
                
                // QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                // ADD TO CART
                
                AddToCartDetailView()
                    .padding(.bottom,20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
        } //: VSTACK
        .ignoresSafeArea()
        .zIndex(0)
        .background(
            shop.selectedProduct?.rgb ?? 
            sampleProduct.rgb
        )
    }
}

// MARK: - PREVIEWS

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
            ProductDetailView()
            .environmentObject(Shop())
                .previewLayout(.fixed(width: 375, height: 812))
    }
}
