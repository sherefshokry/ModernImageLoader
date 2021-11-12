//
//  ModernImageLoaderApp.swift
//  ModernImageLoader
//
//  Created by SherifShokry on 11/11/2021.
//

import SwiftUI

@main
struct ModernImageLoaderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(source: URL(string: "https://dashboard.tamweel-mortgage.com/storage/uploads/small/qsikkifhc91613317754.jpeg")! )
        }
    }
}
