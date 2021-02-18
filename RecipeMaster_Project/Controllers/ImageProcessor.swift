//
//  ImageProcessor.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 18/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class ImageProcessor {
    
    
    public func processImage(image: String, completion: @escaping (UIImage?)->()){

        if let url = URL(string: image) {
    
                      URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
    
    
                          if error != nil {
    
                              print(error?.localizedDescription)
    
                          }
                          DispatchQueue.main.async {
                              if data != nil {
    
                                  if let proImage = UIImage(data: data!){
    
                                    completion(proImage)
    
                                  }
                              } else {
    
                              }
                          }
    
                }).resume()
            }
    }
    
    
}
