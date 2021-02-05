//
//  GoogleSearchService.swift
//  RecipeMaster_Project
//
//  Created by Athlosn90 on 05/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation


class GoogleSearchService: NSObject {
    
    
    func getData(search: String) {
        
        
        let apiKey = "AIzaSyDKVx50u_FxYRGS0xH4ujM_fEGq9cG12mw"
        let bundleId = "AndreaSanna.RecipeMaster-Project"
        let searchEngineId = "008687677900679795553:gdyofjylvae"
        let serverAddress = String(format: "https://www.googleapis.com/customsearch/v1?q=%@&cx=%@&key=%@",search ,searchEngineId, apiKey)

            print(search)

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
                    

            do{

            let jsonData = try JSONDecoder().decode(websiteDescription.self, from: data)
             
                
//            Get back to Main Thread
                DispatchQueue.main.async {
                    
//                    Protocol to pass to dataModel
                    
                }
                
            }  catch let error as NSError {
                print(error)
            }
        }
        datatask.resume()
    }
    
}
