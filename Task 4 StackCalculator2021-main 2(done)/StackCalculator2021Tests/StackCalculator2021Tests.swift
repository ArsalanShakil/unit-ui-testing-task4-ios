//
//  StackCalculator2021Tests.swift
//  StackCalculator2021Tests
//
//  Created by Petri/Metropolia on 25.3.2021.
//

import XCTest
@testable import StackCalculator2021

class StackCalculator2021Tests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAdd() throws {
        let sc = StackCalculator()
        sc.push(1)
        sc.push(2)
        sc.doCalc(with: .plus)
        XCTAssert(sc.pop() == 3, "1+2 failed")
    }
    
    func testAdd2() throws {
        let sc = StackCalculator()
        sc.push(1)
        sc.push(2)
        sc.push(5)
        sc.doCalc(with: .plus)
        XCTAssert(sc.pop() == 7, "2+5 failed")
        sc.push(7)
        sc.doCalc(with: .plus)
        XCTAssert(sc.pop() == 8, "1+7 failed")
        
    }
    
    func testAddNegativeTest() throws {
        let sc = StackCalculator()
        sc.push(-10)
        sc.push(2)
        sc.doCalc(with: .plus)
        XCTAssert(sc.pop() == -8, "-10+2 failed")
    }
    
    func testDivide1() throws {
        let sc = StackCalculator()
        sc.push(1)
        sc.push(2)
        sc.doCalc(with: .divide)
        XCTAssert(sc.pop() == nil, "1/2 failed")
    }
    
    func testDivide2() throws {
        let sc = StackCalculator()
        sc.push(666)
        sc.push(1)
        sc.push(0)
        sc.doCalc(with: .divide)
        XCTAssert(sc.pop() == 666, "1/0 failed")
    }
    
    func testDivideNegativeTest() throws {
        let sc = StackCalculator()
        sc.push(-8)
        sc.push(2)
        sc.doCalc(with: .divide)
        XCTAssert(sc.pop() == -4, "-8/2 failed")
    }
    
    func testMultiply() throws {
        let sc = StackCalculator()
        sc.push(3)
        sc.push(2)
        sc.doCalc(with: .multiply)
        XCTAssert(sc.pop() == 6, "3*2 failed")
    }
    
    func testMultiply2() throws {
        let sc = StackCalculator()
        sc.push(3)
        sc.push(2)
        sc.push(5)
        sc.doCalc(with: .multiply)
        XCTAssert(sc.pop() == 10, "2*5 failed")
    }
    
    func testMultiply3() throws {
        let sc = StackCalculator()
        sc.push(0)
        sc.push(2)
        sc.doCalc(with: .multiply)
        XCTAssert(sc.pop() == nil, "0*2 failed")
    }
    
    func testMultiplyNegativeTest() throws {
        let sc = StackCalculator()
        sc.push(3)
        sc.push(-5)
        sc.doCalc(with: .multiply)
        XCTAssert(sc.pop() == -15, "3*-2 failed")
    }
    
    func testSubstraction() throws {
        let sc = StackCalculator()
        sc.push(5)
        sc.push(3)
        sc.doCalc(with: .minus)
        XCTAssert(sc.pop() == 2, "5-3 failed")
    }
    
    func testSubstraction2() throws {
        let sc = StackCalculator()
        sc.push(-2)
        sc.push(6)
        sc.doCalc(with: .minus)
        XCTAssert(sc.pop() == -8, "-2-6 failed")
    }
    
    func testSubstractionNegativeTest() throws {
        let sc = StackCalculator()
        sc.push(5)
        sc.push(15)
        sc.doCalc(with: .minus)
        XCTAssert(sc.pop() == -10, "5-15 failed")
    }
    
    
    
    
    
}

