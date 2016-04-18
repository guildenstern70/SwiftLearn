//
//  Variables.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation

func variablesAndValues()-> Double
{
    // Variable
    var greeting: String = "Hello World"
    greeting += " of Swift"
    
    print(greeting)
    
    // Value
    let greeting_val = "Hello World"
    print(greeting_val)
    
    // Types
    let version: Double = 1.0
    let introduced: Int = 2014
    let _: Bool = true
    
    return Double(introduced)*version

}

