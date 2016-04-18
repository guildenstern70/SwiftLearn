//
//  Inheritance.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 29/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation

func testInheritance()
{
    ShapeFactory.createSome(20)
}

class ShapeFactory
{
    class func create(sides: Int) -> Shape?
    {
        
        switch sides
        {
        case 3:
            return Triangle()
        case 4:
            return Square()
        case 5:
            return Pentagon()
        default:
            return nil
        }
        
    }
    
    class func createSome(howmany: Int)
    {
        for _ in 1...howmany
        {
            let nr: Int = Int(arc4random_uniform(6))
            let shape : Shape? = ShapeFactory.create(nr)
            if (shape != nil)
            {
                let theShape = shape!
                let shapeDesc = theShape.description
                print("\(shapeDesc) has been created.", terminator: "")
                let sideLen = Int(arc4random_uniform(99))
                shape?.setSideLength(sideLen)
                print(" Its perimeter is \(theShape.getPerimeter())")
            }
        }
    }
}

class Shape
{
    var numberOfSides: Int = 0
    var name: String
    var sideLen: Int

    // Abstract class
    private init(name: String)
    {
        self.name = name
        self.sideLen = 0
        self.numberOfSides = 0
    }
    
    func setSideLength(valx: Int)
    {
        self.sideLen = valx
    }
    
    func getPerimeter() -> Int
    {
        return self.numberOfSides * self.sideLen
    }

    var description: String
    {
        return "A shape with \(self.numberOfSides) sides."
    }

}

class Triangle : Shape
{
    init()
    {
        super.init(name: "Triangle")
        self.numberOfSides = 3
    }
    
    override var description : String
    {
        return "A triangle"
    }
    
}

class Square : Shape
{
    init()
    {
        super.init(name: "Square")
        self.numberOfSides = 4
    }
    
    override var description : String
    {
            return "A square"
    }
    
}

class Pentagon : Shape
{
    init()
    {
        super.init(name: "Pentagon")
        self.numberOfSides = 5
    }
    
    override var description : String
    {
            return "A pentagon"
    }
    
}
