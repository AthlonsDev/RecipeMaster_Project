//
//  TextDelegate.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 01/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit


class TextDelegate: NSObject, UITextFieldDelegate {
    
    
    private func processLoginNotification() {
        
    }
       
    func textFieldDidBeginEditing(_ textField: UITextField) {
           
//        print(textField.text!)
//        let name = Notification.Name(searchNotification)
//        NotificationCenter.default.post(name: name, object: nil)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
//        print(textField.text!)
//        let name = Notification.Name(searchNotification)
//        NotificationCenter.default.post(name: name, object: nil)
           
    }
       
    func textFieldDidChangeSelection(_ textField: UITextField) {
//        print(textField.text!)
        let name = Notification.Name(searchNotification)
        NotificationCenter.default.post(name: name, object: textField.text)
        
    }
    
    

}
