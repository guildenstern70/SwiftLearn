//
//  closures.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 05/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation

/**
 * This function takes in input a list and another function
 **/
func sumNumbers(list: [Int], condition: Int -> Bool) -> Int
{
    var sum = 0
    
    for item in list
    {
        if condition(item)
        {
            sum += item
        }
    }
    
    return sum
}

func lessThanTen(number: Int) -> Bool
{
    return number < 10
}

func isEven(number: Int) -> Bool
{
    return (number % 2 == 0)
}

func testClosures()
{
    var numbers = [20, 19, 7, 12]
    let sumLessThanTen = sumNumbers(numbers, lessThanTen)
    let sumEvens = sumNumbers(numbers, isEven)
    
    println("Sum of less than 10 numbers: \(sumLessThanTen)")
    println("Sum of even numbers: \(sumEvens)")
}






