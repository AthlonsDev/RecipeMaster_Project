//
//  TableViewModel.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 17/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class TableViewModel {
    
    let title: String
    let name: String?
    let image: String
       
        
        
    //    Dependency Injection
    init(data: items) {
            
        self.title = data.title
            
        self.name = data.displayLink
        
        self.image = data.displayLink
            
    }
    
    
    func processImages(imageString: String) -> UIImage {
        
        let imageProcessor = ImageProcessor()
        var imageProcessed: UIImage?
        let defaultImage = UIImage()
        
        imageProcessor.processImage(image: imageString) { (image) in
            
            imageProcessed = image
            
        }
        
        guard let newImageProcessed = imageProcessed else {return defaultImage}
        
        return newImageProcessed
        
    }
    
}
