//
//  AllTests.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 03/06/16.
//  Copyright (c) 2016 Alessio Saltarin. All rights reserved.
//

import Cocoa
import XCTest

class AllTests: XCTestCase
{

    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testVariables()
    {
        let person = Person(name: "Alessio", surname: "Saltarin")
        XCTAssertEqual(person.name, "Alessio")
    }

    func testClosures()
    {
        let numbers = [20, 19, 7, 12]
        let sumLessThanTen = sumNumbers(numbers, condition: lessThanTen)
        let sumEvens = sumNumbers(numbers, condition: isEven)

        XCTAssertEqual(sumLessThanTen, 7)
        XCTAssertEqual(sumEvens, 32)
    }

    func testEnum()
    {
        testClosures()
        let someSuit = Suit.SPADE
        XCTAssertEqual(someSuit, Suit.SPADE)
    }

}
