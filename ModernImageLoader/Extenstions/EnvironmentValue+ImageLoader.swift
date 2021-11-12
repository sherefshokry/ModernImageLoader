//
//  EnvironmentValue+ImageLoader.swift
//  ModernImageLoader
//
//  Created by SherifShokry on 11/11/2021.
//

import Foundation
import SwiftUI 

struct ImageLoaderKey: EnvironmentKey {
    static let defaultValue = ImageLoader()
}

extension EnvironmentValues {
    var imageLoader: ImageLoader {
        get { self[ImageLoaderKey.self] }
        set { self[ImageLoaderKey.self ] = newValue}
    }
}
