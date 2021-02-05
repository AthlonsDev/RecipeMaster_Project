//
//  RecipeMaster_ProjectTests.swift
//  RecipeMaster_ProjectTests
//
//  Created by Athlosn90 on 22/01/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import XCTest
@testable import RecipeMaster_Project



class RecipeMaster_ProjectTests: XCTestCase {
    
    let HomeController = ViewController()

      var sut: URLSession!
    
      override func setUp() {
          // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = URLSession(configuration: .default)
      }

      override func tearDown() {
          // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
      }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testSearchField() {
        
        HomeController.createObservers()

        
        
    }
    
    func testNetwork() {
        
        let url = URL(string: "https://cse.google.com/cse?cx=008687677900679795553:gdyofjylvae")
//        Expectation to meet
        let premise = expectation(description: "Completion handler invoked")
        var statusCode: Int?
        var responseError: Error?
        
//        When
        if let url = url {
        let dataTask = sut.dataTask(with: url) { (data, response, error) in
            
            statusCode = (response as? HTTPURLResponse)?.statusCode
            responseError = error
            premise.fulfill()
            
        }
        dataTask.resume()
        wait(for: [premise], timeout: 5)
        
//        then
        XCTAssertNil(responseError)
        XCTAssertEqual(statusCode, 200)
        
        }
    }

}
