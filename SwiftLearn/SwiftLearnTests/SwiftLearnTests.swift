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
    
}
