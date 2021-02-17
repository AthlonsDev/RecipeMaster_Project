//
//  TableViewController.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 11/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    let cellID = "CellID"
    
    var viewModel = [TableViewModel]()
    
    
    private func fetchData(search: String) {
        
       let dataService = GoogleSearchService()
       
       dataService.getData(search: search) { (items, success) in
           
        if success == true {
            
            self.viewModel = items?.map({return TableViewModel(data: $0)}) ?? []
            self.tableView.reloadData()
            
        }
       }
    }
    
    func createObservers() {
         NotificationCenter.default.addObserver(self, selector: #selector(proceedWithFetchingData), name: searchNotificationName, object: nil)
     }
    
    
    @objc func proceedWithFetchingData(notification: NSNotification) {
        fetchData(search: notification.object as! String)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        createObservers()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let dataIndex = viewModel[indexPath.item]
        
        cell.textLabel?.text = dataIndex.title
        
        cell.detailTextLabel?.text = dataIndex.title
        
        return cell
        
    }
    
}
