//
//  RecipeMaster_ProjectUITests.swift
//  RecipeMaster_ProjectUITests
//
//  Created by Athlosn90 on 22/01/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import XCTest

class RecipeMaster_ProjectUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testInterface() {
                        
        let app = XCUIApplication()
        let textfield = app.textFields["Search for Recipes"]
        let findButton = app.buttons["Find Recipes"]
        let browseButton = app.buttons["Browse Recipes"]

        if textfield.isSelected {
            
            XCTAssertTrue(textfield.exists)
            XCTAssertTrue(findButton.exists)
            XCTAssertTrue(browseButton.exists)
            
        }
        if findButton.isSelected {
            
            XCTAssertTrue(textfield.exists)
            XCTAssertTrue(findButton.exists)
            XCTAssertTrue(browseButton.exists)
            
        }
        if browseButton.isSelected {
            
            XCTAssertTrue(textfield.exists)
            XCTAssertTrue(findButton.exists)
            XCTAssertTrue(browseButton.exists)
            
        }
        
        
        
        
    }
    
    func testTextField() {
        
        let app = XCUIApplication()
            app.launch()

        let searchTextField = app.textFields["Search for Recipes"]
        let name = "Something else"
        searchTextField.tap()
        searchTextField.typeText("Something")
        XCTAssertEqual(searchTextField.value as? String, name)
        
    }
    
}


