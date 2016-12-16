//
//  ControlFlow.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 29/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation


// For
func testLoops()
{
    
    var sum = 0
    for j in 1...100  // from 1 to 100
    {
        sum += j
    }
    print(sum)
    
    for j in 1..<100  // from 1 to 99
    {
        sum += j
    }
    print(sum)
    
    
    let flowers = ["Rose", "Tulip", "Gentiana"]
    for flower in flowers
    {
        print("\(flower) ", terminator: "")
    }
    print("")
    
    var m = 2
    repeat
    {
        m = m * 2
    }
    while m < 100
    print(sum+m)

}


func testConditional()
{
    let oneVariable = Int(arc4random_uniform(100) + 1)
    
    if oneVariable == 20
    {
        print("'oneVariable' is equal to than 20");
    }
    else if oneVariable == 50
    {
        print("'oneVariable' is equal to than 50");
    }
    else
    {
        print("None of the values is matching");
    }
    print("Value of variable 'oneVariable' is \(oneVariable)");
}



