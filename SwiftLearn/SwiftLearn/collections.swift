//
//  collections.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//


import Foundation

// Arrays (generic collection that allows duplicate)
func collectionArray()
{
    // Collection of Strings
    var cardNames: [String] = ["Jack", "Queen", "King"]
    cardNames[1] = "-Queen-"
    
    // Merge arrays
    cardNames += ["Ace"]
    
    // Add item
    cardNames.append("Ten")
    
    // Add item at pos
    cardNames.insert("Nine", atIndex: 0)
    
    // Array slice (from...to)
    _ = cardNames[2...cardNames.count-1]
    
    let arrayItems = cardNames.count
    print("Array contain \(arrayItems) items")
    
    for card in cardNames
    {
        print(card)
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
            print(numbers[j]!)
        }
    }
}

