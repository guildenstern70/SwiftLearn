//
// Created by Alessio Saltarin on 03/06/16.
// Copyright (c) 2016 Alessio Saltarin. All rights reserved.
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
