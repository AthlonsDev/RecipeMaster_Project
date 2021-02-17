//
//  TableViewModel.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 17/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation


class TableViewModel {
    
    let title: String
    let name: String?
       
        
        
    //    Dependency Injection
    init(data: items) {
            
        self.title = data.title
            
        self.name = data.displayLink
            
    }
}
