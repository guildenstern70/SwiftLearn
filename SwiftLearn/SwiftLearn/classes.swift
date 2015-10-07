//
//  classes.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation

extension String
{
    public func indexOf(char: Character) -> Int {
        if let idx = self.characters.indexOf(char) {
            return self.startIndex.distanceTo(idx)
        }
        return -1
    }
}

public class Person : CustomStringConvertible
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
    
    // Constructior Two
    public init(name: String, surname: String)
    {
        self.name = name
        self.surname = surname
    }
    
    // Getter and Setter
    public var completeName: String
    {
        get
        {
            return self.description
        }
        
        set
        {
            let complete = newValue
            let needle: Character = " "
            let idx = complete.indexOf(needle)
            if (idx > 0)
            {
                let uni_idx = complete.startIndex.advancedBy(idx)
                let uni_idx2 = complete.startIndex.advancedBy(idx+1)
                self.name = complete.substringToIndex(uni_idx)
                self.surname = complete.substringFromIndex(uni_idx2)
            }
            else
            {
                print("Please insert [Name Surname]")
            }
        }
        
    }
    
    // toString equivalent - member of Printable
    public var description: String
    {
        return "\(self.name) \(self.surname)"
    }
    
    // Public Void Method
    public func swapNames()
    {
        let oldName = self.name
        let oldSurname = self.surname
        self.name = oldSurname
        self.surname = oldName
    }
    
    // Method with return value
    public func nameLength() -> Int
    {
        return self.name.characters.count
    }
    
    
}


func somePersons()
{
    let alessio = Person(name:"Alessio", surname:"Saltarin")
    let matteo = Person(name:"Matteo", surname:"Tenconi")
    print(alessio)
    alessio.swapNames()
    print(alessio)
    print("Alessio has \(alessio.nameLength()) chars.")
    print(matteo)
    let dana = Person()
    dana.completeName = "Dana Sandu"
    print(dana)
}