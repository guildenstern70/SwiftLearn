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
    println(sum)
    
    for j in 1..<100  // from 1 to 99
    {
        sum += j
    }
    println(sum)
    
    
    let flowers = ["Rose", "Tulip", "Gentiana"]
    for flower in flowers
    {
        print("\(flower) ")
    }
    println()
    
    var m = 2
    do
    {
        m = m * 2
    }
    while m < 100
    println(sum+m)

}


func testConditional()
{
    var varA:Int = 100;
    
    if varA == 20
    {
        println("varA is equal to than 20");
    }
    else if varA == 50
    {
        println("varA is equal to than 50");
    }
    else
    {
        println("None of the values is matching");
    }
    println("Value of variable varA is \(varA)");
}



