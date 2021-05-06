//
//  StackCalculator2021UITests.swift
//  StackCalculator2021UITests
//
//  Created by Petri/Metropolia on 25.3.2021.
//

import XCTest

class StackCalculator2021UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testForNumberOne() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //numberOne is an identifier to 1 in the storyboard
        let numberOne = app.buttons["numberOne"]
        numberOne.tap()
        
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "1")

    }

    func testForNumberTwo() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        //numberTwo is an identifier to 2 in the storyboard
        let numberTwo = app.buttons["numberTwo"]
        numberTwo.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "2")
    }
    
    func testForNumberThree() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //numberThree is an identifier to 3 in the storyboard
        let numberThree = app.buttons["numberThree"]
        numberThree.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "3")
    }
    
    func testForNumberZero() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //numberZero is an identifier to 0 in the storyboard
        let numberZero = app.buttons["numberZero"]
        numberZero.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "0")
    }
    
    func testForNumberFour() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberFour = app.buttons["numberFour"]
        numberFour.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "4")
    }
//    
//    func testForNumberFive() throws {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//        
//        let numberFive = app.buttons["numberFive"]
//        numberFive.tap()
//        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "5")
//    }
    
    func testForNumberSix() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberSix = app.buttons["numberSix"]
        numberSix.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "6")
    }
    func testForNumberSeven() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberSeven = app.buttons["numberSeven"]
        numberSeven.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "7")
    }
    func testForNumberEight() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberEight = app.buttons["numberEight"]
        numberEight.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "8")
    }
//    func testForNumberNine() throws {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//        
//        let numberNine = app.buttons["numberNine"]
//        numberNine.tap()
//        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "9")
//    }
    
    
    func testOperatorPlus() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberThree = app.buttons["numberThree"]
        numberThree.tap()
        
        //Enter is an identifier to ENT in the storyboard
        let enter = app.buttons["Enter"]
        enter.tap()
        let numberTwo = app.buttons["numberTwo"]
        numberTwo.tap()
        enter.tap()
        
        //operatorPlus is an identifier to + in the storyboard
        let operatorPlus = app.buttons["operatorPlus"]
        operatorPlus.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "5")
    }
    
    func testOperatorMinus() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberThree = app.buttons["numberThree"]
        numberThree.tap()
        let enter = app.buttons["Enter"]
        enter.tap()
        let numberTwo = app.buttons["numberTwo"]
        numberTwo.tap()
        enter.tap()
        
        //operatorMinus is an identifier to - in the storyboard
        let operatorMinus = app.buttons["operatorMinus"]
        operatorMinus.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "1")
    }
    func testOperatorMultiply() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberThree = app.buttons["numberThree"]
        numberThree.tap()
        let enter = app.buttons["Enter"]
        enter.tap()
        let numberTwo = app.buttons["numberTwo"]
        numberTwo.tap()
        enter.tap()
        
        //operatorMultiply is an identifier to * in the storyboard
        let operatorMultiply = app.buttons["operatorMultiply"]
        operatorMultiply.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "6")
    }
    
    func testOperatorDivision() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberThree = app.buttons["numberThree"]
        numberThree.tap()
        let enter = app.buttons["Enter"]
        enter.tap()
        let numberTwo = app.buttons["numberTwo"]
        numberTwo.tap()
        enter.tap()
        
        //operatorDivide is an identifier to / in the storyboard
        let operatorDivide = app.buttons["operatorDivide"]
        operatorDivide.tap()
        XCTAssertTrue(app.staticTexts.element(matching:.any, identifier: "resultLabel").label == "1")
    }
    
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
