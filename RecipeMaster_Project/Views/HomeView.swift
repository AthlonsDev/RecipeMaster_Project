//
//  HomeView.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 27/01/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    
    
    var searchRecField: UITextField = {
       
        var tf = UITextField()
        tf.placeholder = "Search for Recipes"
        tf.autocapitalizationType = .sentences
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.layer.borderWidth = 0.5
        tf.layer.borderColor = UIColor.black.cgColor
        
        
            
        return tf
        
    }()
    
    var findRecButton: UIButton = {
       var button = UIButton()
        button.setTitle("Find Recipes", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var browseRecButton: UIButton = {
       var button = UIButton()
        button.setTitle("Browse Recipes", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    override init(frame: CGRect) {
           super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(searchRecField)
        addSubview(findRecButton)
        addSubview(browseRecButton)
        
        let searchRecConstraints = [searchRecField.centerXAnchor.constraint(equalTo: centerXAnchor),
                                    searchRecField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -100)]
        
        let findRecButtonConstraints = [findRecButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                                        findRecButton.topAnchor.constraint(equalTo: searchRecField.bottomAnchor, constant: 20),
                                        findRecButton.heightAnchor.constraint(equalToConstant: 25),
                                        findRecButton.widthAnchor.constraint(equalToConstant: 150)]
        
        let browseRecButtonConstraints = [browseRecButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                                          browseRecButton.topAnchor.constraint(equalTo: findRecButton.bottomAnchor, constant: 20),
                                          browseRecButton.heightAnchor.constraint(equalToConstant: 25),
                                          browseRecButton.widthAnchor.constraint(equalToConstant: 150)]
        
        NSLayoutConstraint.activate(searchRecConstraints)
        NSLayoutConstraint.activate(findRecButtonConstraints)
        NSLayoutConstraint.activate(browseRecButtonConstraints)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}
