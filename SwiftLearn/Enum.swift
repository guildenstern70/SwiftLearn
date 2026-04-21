//
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015-2026 Alessio Saltarin.
//  All rights reserved.
//

import Foundation

public enum Suit: String
{
    case spade
    case club
    case heart
    case diamond
}

func testSuit()
{
    let someSuit = Suit.club

    if someSuit == Suit.club
    {
        Swift.print("Suit is " + someSuit.rawValue)
    }
}
