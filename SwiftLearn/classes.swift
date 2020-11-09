//
//  Classes.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation

open class Person : CustomStringConvertible
{
    
    var name: String
    var surname: String
    
    // Default initializer
    var age:Int = 10
    
    // Constructor One
    public init()
    {
        self.name = "Unknown name"
        self.surname = "Unknown surname"
    }
    
    // Constructor Two
    public init(name: String, surname: String)
    {
        self.name = name
        self.surname = surname
    }
    
    // Getter and Setter
    open var completeName: String
    {
        get
        {
            self.description
        }
        
        set
        {
            let complete = newValue
            let needle: Character = " "
            if let idx = complete.index(of: needle)
            {
                self.name = String(complete[..<idx]) // Partial Range from 0 to uni_idx
                self.surname = String(complete[idx...]) // Partial Range from uni_idx2 to end
            }
            else
            {
                print("Please insert [Name Surname]")
            }
        }
        
    }
    
    // toString equivalent - member of Printable
    open var description: String
    {
        "\(self.name) \(self.surname) of age \(self.age)"
    }

    // This method uses a "named" parameter
    open func setAge(age anAge: Int)
    {
        self.age = anAge
    }
    
    // Public Void Method
    open func swapNames()
    {
        let oldName = self.name
        let oldSurname = self.surname
        self.name = oldSurname
        self.surname = oldName
    }
    
    // Method with return value
    open func nameLength() -> Int
    {
        self.name.count
    }
    
    
}

