//
//  ContentView.swift
//  ModernImageLoader
//
//  Created by SherifShokry on 11/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    private let source: URLRequest
       @State private var image: UIImage?

       @Environment(\.imageLoader) private var imageLoader

       init(source: URL) {
           self.init(source: URLRequest(url: source))
       }

       init(source: URLRequest) {
           self.source = source
       }
    
    var body: some View {
        Group {
            if let image = image {
                Image(uiImage: image)
            } else {
                Rectangle()
                    .background(Color.red)
            }
        }
        .task {
            await loadImage(at: source)
        }
    }

    func loadImage(at source: URLRequest) async {
        do {
            async let image1 =  imageLoader.fetch(source)
            async let image2 =  imageLoader.fetch(source)
            
            let (result1 , _) = try await (image1,image2)
            
            image = result1
        } catch {
            
            print(error)
        }
    }
}




//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
