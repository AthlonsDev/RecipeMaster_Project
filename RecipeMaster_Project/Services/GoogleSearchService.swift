//
//  GoogleSearchService.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 05/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation


class GoogleSearchService: NSObject {
    
    
    func getData(search: String, completion: @escaping ([items]?, Bool) -> ()) {
        
        
        let apiKey = "AIzaSyAeuI82j0jiiqxnaFy50Nw9h8PBhgRKkRM"
        let bundleId = "AndreaSanna.RecipeMaster-Project"
        let searchEngineId = "b1bd162924030a980"
        let serverAddress = String(format: "https://cse.google.com/cse?cx=b1bd162924030a980",search ,searchEngineId, apiKey)

        guard serverAddress.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) != nil else {return}
        //        guard let url = URL(string: urlString) else {return}
                
        let url = serverAddress.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let finalUrl = URL(string: url!)
        let request = NSMutableURLRequest(url: finalUrl!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
            request.httpMethod = "GET"
            request.setValue(bundleId, forHTTPHeaderField: "X-Ios-Bundle-Identifier")

        let session = URLSession.shared

        let datatask = session.dataTask(with: request as URLRequest) { (data, response, error) in
                    
        guard let data = data else {return}

        let dataAsString = String(describing: data)
 

             do {
                let data = try JSONDecoder().decode(websiteDescription.self, from: data)
                
                let dataItems = data.items
                
                    DispatchQueue.main.async {
                        completion(dataItems, true)
                    }
                } catch let jsonErr {
                        print("Failed to decode:", jsonErr)
                }
            }.resume()
    }
    
}
