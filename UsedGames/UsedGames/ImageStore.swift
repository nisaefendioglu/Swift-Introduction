//
//  ImageStore.swift
//  UsedGames
//
//  Created by Nisa on 13.05.2022.
//

import UIKit

class ImageStore: ObservableObject {
    let cache = NSCache<NSString, UIImage>()
    
    func setImage(_ image: UIImage, key: String){
        cache.setObject(image, forKey: key as NSString)
        objectWillChange.send()
    }
    
    func image(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
    
    func deleteImage(forkey key:String) {
        return cache.removeObject(forKey: key as NSString)
        objectWillChange.send()
    }
}
