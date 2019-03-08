//
//  NokiaUITests.swift
//  NokiaUITests
//
//  Created by Jonathan on 08.03.19.
//  Copyright © 2019 Jonathan. All rights reserved.
//

import XCTest

class NokiaUITests: XCTestCase {
    
    // MARK: - Setup
    
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        app.launchArguments.append("--uitesting")
    }
    
    // MARK: - Tests
    
    func testTouchView() {
        app.launch()
        
        let button = app.otherElements["btn_5"]
        button.tap()
        button.tap(withNumberOfTaps: 2, numberOfTouches: 1)
        button.tap(withNumberOfTaps: 3, numberOfTouches: 1)
        
        let textField = app.textViews["textView"]
        textField.tap()
        XCTAssertEqual(textField.value as! String, "jkl")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
