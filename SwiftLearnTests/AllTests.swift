//
//  AllTests.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 03/06/16.
//  Copyright (c) 2016-21 Alessio Saltarin. All rights reserved.
//

import Cocoa
import XCTest

/*
 Classes need to be added to SwiftLearnTests Project Settings (Build Phase)
 in order to be found
 */
class AllTests: XCTestCase
{

    override func setUp()
    {
        super.setUp()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }

    func testClasses()
    {
        let alessio = Person(name:"Alessio", surname:"Saltarin")
        let matteo = Person(name:"Matteo", surname:"Tenconi")
        print(alessio)
        XCTAssertEqual(alessio.name, "Alessio")
        alessio.swapNames()
        XCTAssertEqual(alessio.name, "Saltarin")
        print(alessio)
        print(matteo)
        let dana = Person()
        dana.completeName = "Dana Sandu"
        dana.setAge(age: 25)
        XCTAssertEqual(dana.age, 25)
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

    func testFiles()
    {

        let path = NSTemporaryDirectory() as String
        let contents = "Prova File - Prova File"

        let files = XFiles(filename: "prova.txt", filepath: path)
        files.write(contents)

        let readFile = files.read()

        if (contents == readFile)
        {
            print ("Ok, file write and read successful")
        }
        else
        {
            print ("Error in reading/writing file")
        }

        files.delete()

    }

}
