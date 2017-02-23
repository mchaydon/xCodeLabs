//
//  numberGuess.swift
//  Homework08
//
//  Created by bitstudent on 2/14/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class numberGuess: NSObject {
    var randomNumber = 0
    var numOfGuesses = 0
    
    func generateNumber()
    {
        randomNumber = Int(arc4random_uniform(100) + 1)
        numOfGuesses = 0
    }
}
