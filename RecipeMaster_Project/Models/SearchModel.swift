
//
//  SearchModle.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 05/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation

struct websiteDescription: Decodable{
    let name: String?
    let description: String?
    let items:[items]
    let kind: String?
//    let context: context
    
}


struct items: Decodable {
    let displayLink: String
    let kind: String
//    let pagemap: pageMap
    let title: String
    
}

