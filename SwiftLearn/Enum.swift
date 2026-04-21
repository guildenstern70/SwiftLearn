//
//  SwiftLearn
//
//  Created by Alessio Saltarin on 01/06/15.
//  Copyright (c) 2015-2026 Alessio Saltarin.
//  All rights reserved.
//

import Foundation

public enum Suit : String
{
    case SPADE
    case CLUB
    case HEART
    case DIAMOND
}

func testSuit()
{
    let someSuit = Suit.CLUB

    if (someSuit == Suit.CLUB)
    {
        Swift.print("Suit is " + someSuit.rawValue)
    }
}
