//
//  ContentView.swift
//  Touchdown
//
//  Created by Farih Muhammad on 14/08/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing: 0) {
                    NavigationBarView()
                        .padding()
    //                    .padding(.horizontal, 15)
    //                    .padding(.bottom)
    //                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical,20)
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { item in
                                    ProductItemView(product: item)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = item
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: LOOP
                            } //: GRID
                            .padding(15)
                            TitleView(title: "Brands")
                            BrandGridView()
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    } //: SCROLL
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea())
            } else {
                 ProductDetailView()
            }
        } //: ZSTACK
//        .ignoresSafeArea(.all, edges: .top)
    }
}
// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
