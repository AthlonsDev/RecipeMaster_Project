//
//  SearchViewModel.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 05/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation


class SearchViewModel {
    
    
    
    
    func startSearchContent(search: String) {
        
        
        let searchService = GoogleSearchService()
        
        searchService.getData(search: search)
        
        
    }
    
}
