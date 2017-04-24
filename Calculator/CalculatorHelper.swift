//
//  CalculatorHelper.swift
//  Calculator
//
//  Created by Jeganathan, Vivin (Infosys) on 4/23/17.
//  Copyright © 2017 Org. All rights reserved.
//

import UIKit

enum CalculatorError : Error
{
    case invalidInput
}

class CalculatorHelper: NSObject
{
    static func multiply(numbers : String...) throws -> Double
    {
        var result = 1.0
        
        for number in numbers
        {
            if let number = Double(number)
            {
                result *= number
            }
            else
            {
                throw CalculatorError.invalidInput
            }
        }
        
        return result
    }
}
