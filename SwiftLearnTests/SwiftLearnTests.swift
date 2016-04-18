//
//  SwiftLearnTests.swift
//  SwiftLearnTests
//
//  Created by Alessio Saltarin on 04/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Cocoa
import XCTest

class SwiftLearnTests: XCTestCase
{
    
    override func setUp()
    {
        super.setUp()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    func testVariables()
    {
        let person = Person(name: "Alessio", surname: "Saltarin")
        XCTAssertEqual(person.name, "Alessio")
    }
    
    func testClosures()
    {
        var numbers = [20, 19, 7, 12]
        let sumLessThanTen = sumNumbers(numbers, condition: lessThanTen)
        let sumEvens = sumNumbers(numbers, condition: isEven)
        
        XCTAssertEqual(sumLessThanTen, 7)
        XCTAssertEqual(sumEvens, 32)
    }
    
}
