//
//  CakesUITests.swift
//  CakesUITests
//
//  Created by Alpa Sanghavi on 12/20/16.
//  Copyright © 2016 Alpa Sanghavi. All rights reserved.
//

import XCTest

class CakesUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    var app = XCUIApplication()
    var item_choclate = "Choclate Cake"
    var item_vanilla = "Vanilla Cake"
    var item_darkForest = "DarkForest Cake"
    var item_redVelvet = "Red Velvet Cake"
    var item_strawberry = "Strawberry Cake"
    
    
    func getScreenContents(item_name:String) -> String{
        var screen_contents = ""
        app.tables.staticTexts[item_name].tap()
        app.navigationBars.buttons["More Cakes"].tap()
        screen_contents = app.debugDescription
        
        return screen_contents
    
    }
    
    func find_our_match(source_str :String, pattern:String) -> String{
        var str_matched = ""
        
        if let search_result = source_str.range(of: pattern,options:  .regularExpression) {
            str_matched = source_str.substring(with: search_result)
            
        }
        
        return str_matched
    }
    
    
    func testChoclateCakeScreen(){
        let screen_dump = getScreenContents(item_name: item_choclate)
        let pattern_for_name = item_choclate
        let pattern_image = "image.*"
        let pattern_for_receipe = "Preheat oven.*"
        
        let result_for_name = find_our_match(source_str: screen_dump,pattern: pattern_for_name)
        print(result_for_name)
        
        let result_for_image = find_our_match(source_str: screen_dump,pattern: pattern_image)
        print(result_for_image)
        
        let result_for_receipe = find_our_match(source_str: screen_dump,pattern: pattern_for_receipe)
        print(result_for_receipe)
        
        XCTAssertFalse((result_for_name.isEmpty) && (result_for_image.isEmpty) && (result_for_receipe.isEmpty))
    }
    
    func testVanillaCakeScreen(){
        let screen_dump = getScreenContents(item_name: item_vanilla)
        let pattern_for_name = item_vanilla
        let pattern_image = "image.*"
        let pattern_for_receipe = "Preheat oven.*"
        
        let result_for_name = find_our_match(source_str: screen_dump,pattern: pattern_for_name)
        print(result_for_name)
        
        let result_for_image = find_our_match(source_str: screen_dump,pattern: pattern_image)
        print(result_for_image)
        
        let result_for_receipe = find_our_match(source_str: screen_dump,pattern: pattern_for_receipe)
        print(result_for_receipe)
        
        XCTAssertFalse((result_for_name.isEmpty) && (result_for_image.isEmpty) && (result_for_receipe.isEmpty))
    }
    
    func testRedVelvetCakeScreen(){
        let screen_dump = getScreenContents(item_name: item_redVelvet)
        let pattern_for_name = item_redVelvet
        let pattern_image = "image.*"
        let pattern_for_receipe = "Preheat oven.*"
        
        let result_for_name = find_our_match(source_str: screen_dump,pattern: pattern_for_name)
        print(result_for_name)
        
        let result_for_image = find_our_match(source_str: screen_dump,pattern: pattern_image)
        print(result_for_image)
        
        let result_for_receipe = find_our_match(source_str: screen_dump,pattern: pattern_for_receipe)
        print(result_for_receipe)
        
        XCTAssertFalse((result_for_name.isEmpty) && (result_for_image.isEmpty) && (result_for_receipe.isEmpty))
    }
    
    func testDarkForestCakeScreen(){
        let screen_dump = getScreenContents(item_name: item_darkForest)
        let pattern_for_name = item_darkForest
        let pattern_image = "image.*"
        let pattern_for_receipe = "Preheat oven.*"
        
        let result_for_name = find_our_match(source_str: screen_dump,pattern: pattern_for_name)
        print(result_for_name)
        
        let result_for_image = find_our_match(source_str: screen_dump,pattern: pattern_image)
        print(result_for_image)
        
        let result_for_receipe = find_our_match(source_str: screen_dump,pattern: pattern_for_receipe)
        print(result_for_receipe)
        
        XCTAssertFalse((result_for_name.isEmpty) && (result_for_image.isEmpty) && (result_for_receipe.isEmpty))
    }
    
    func testStrawberryCakeScreen(){
        let screen_dump = getScreenContents(item_name: item_strawberry)
        let pattern_for_name = item_strawberry
        let pattern_image = "image.*"
        let pattern_for_receipe = "Preheat oven.*"
        
        let result_for_name = find_our_match(source_str: screen_dump,pattern: pattern_for_name)
        print(result_for_name)
        
        let result_for_image = find_our_match(source_str: screen_dump,pattern: pattern_image)
        print(result_for_image)
        
        let result_for_receipe = find_our_match(source_str: screen_dump,pattern: pattern_for_receipe)
        print(result_for_receipe)
        
        XCTAssertFalse((result_for_name.isEmpty) && (result_for_image.isEmpty) && (result_for_receipe.isEmpty))
    }
    

    func testExample() {
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    
}
