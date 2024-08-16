//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Farih Muhammad on 14/08/2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
