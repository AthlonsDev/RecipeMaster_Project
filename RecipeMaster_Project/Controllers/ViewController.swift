//
//  ViewController.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 22/01/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import UIKit

let searchNotification = "com.project.search"

class ViewController: UIViewController {
    
    
    let searchNotificationName = Notification.Name(searchNotification)
      
      deinit {
          NotificationCenter.default.removeObserver(self)
      }
    
    var searchTerm = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initView()
        
        createObservers()
    }
    
    let textDelegate: TextDelegate = TextDelegate()
    
    func initView() {
        
        view = HomeView()
        
        (view as! HomeView).browseRecButton.addTarget(self, action: #selector(browseRecipes), for: .touchUpInside)
        (view as! HomeView).findRecButton.addTarget(self, action: #selector(findRecipes), for: .touchUpInside)
        (view as! HomeView).searchRecField.delegate = textDelegate
        
    }
    
    
    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(processSearchTerms), name: searchNotificationName, object: nil)
    }
    
    
    
    @objc func browseRecipes() {
        
//        Go to the recipee catalog
        
    }
    
    @objc func processSearchTerms(notification: NSNotification) {
            
        searchTerm = notification.object as! String
        
            
    }

    @objc func findRecipes() {
        
//        Go to search result using searchTerm
        let viewModel = SearchViewModel()
        
        viewModel.startSearchContent(search: searchTerm)
                
    }
    

}

