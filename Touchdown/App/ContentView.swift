//
//  ContentView.swift
//  Touchdown
//
//  Created by Farih Muhammad on 14/08/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack {
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
                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                } //: SCROLL
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea())
        } //: ZSTACK
//        .ignoresSafeArea(.all, edges: .top)
    }
}
// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
