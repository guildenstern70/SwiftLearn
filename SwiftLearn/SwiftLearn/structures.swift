//
//  structures.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015 Alessio Saltarin. All rights reserved.
//

import Foundation

// Structures are value types
struct Resolution
{
    var width = 0
    var height = 0
    
    func print()
    {
        println("Resolution set to \(self.width)x\(self.height)")
    }
}

func setResolution()
{
    let res = Resolution(width: 640, height: 480)
    res.print()
    
    var res2 = Resolution()
    res2.width = 1920
    res2.height = 1080
    res2.print()
}
