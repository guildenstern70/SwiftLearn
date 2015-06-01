//
//  collections.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//


import Foundation

// Arrays
func collectionArray()
{
    var cardNames: [String] = ["Jack", "Queen", "King"]
    cardNames[1] = "-Queen-"
    cardNames += ["Ace"]
    for card in cardNames
    {
        println(card)
    }
}

// Dictionary
func collectionDictionary()
{
    var numbers = [ 1: "One",
                    2: "Two",
                    3: "Thre"]
    numbers[3] = "Three"
    for var j=1; j<=numbers.count; j++
    {
        if ((numbers[j]) != nil)
        {
            println(numbers[j]!)
        }
    }
}

