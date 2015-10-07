//
//  controlflow.swift
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
    let varA:Int = 100;
    
    if varA == 20
    {
        print("varA is equal to than 20");
    }
    else if varA == 50
    {
        print("varA is equal to than 50");
    }
    else
    {
        print("None of the values is matching");
    }
    print("Value of variable varA is \(varA)");
}



