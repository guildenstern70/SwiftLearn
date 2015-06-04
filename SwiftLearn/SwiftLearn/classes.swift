//
//  classes.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation

public class Person
{
    
    var name: String
    var surname: String
    
    // Default initializer
    var age:Int = 10
    
    // Constructors
    public init()
    {
        self.name = "Unknown name"
        self.surname = "Unknown surname"
    }
    
    public init(name: String, surname: String)
    {
        self.name = name
        self.surname = surname
    }
    
    
}