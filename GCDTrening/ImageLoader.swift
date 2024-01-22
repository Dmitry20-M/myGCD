//
//  ImageLoader.swift
//  GCDTrening
//
//  Created by Mac on 22.01.2024.
//

import UIKit

class ImageLoader {
    static func loadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error loading image: \(error)")
                completion(nil)
            } else if let data = data {
                let image = UIImage(data: data)
                completion(image)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
