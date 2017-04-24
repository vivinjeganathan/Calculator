//
//  CalculatorHelperTests.swift
//  Calculator
//
//  Created by Jeganathan, Vivin (Infosys) on 4/23/17.
//  Copyright © 2017 Org. All rights reserved.
//

import UIKit
import XCTest
@testable import Calculator

class CalculatorHelperTests: XCTestCase
{
    func testmultiplyNumbersInArrayWith0()
    {
        do
        {
            let result1 = try CalculatorHelper.multiply(numbers: "0", "0")
            XCTAssert(result1 == 0, "Result should be 0. Case not handled")
            
            let result2 = try CalculatorHelper.multiply(numbers: "1", "0")
            XCTAssert(result2 == 0, "Result should be 0. Case not handled")
            
            let result3 = try CalculatorHelper.multiply(numbers: "1", "0", "1")
            XCTAssert(result3 == 0, "Result should be 0. Case not handled")
        }
        catch
        {
            XCTFail("Wrong Error")
        }
    }
    
    func testMultiplyWithPositiveInts()
    {
        do
        {
            let result1 = try CalculatorHelper.multiply(numbers: "2")
            XCTAssert(result1 == 2, "Result should be 2. Case not handled")
            
            let result2 = try CalculatorHelper.multiply(numbers: "2", "3")
            XCTAssert(result2 == 6, "Result should be 6. Case not handled")
            
            let result3 = try CalculatorHelper.multiply(numbers: "2", "3", "4")
            XCTAssert(result3 == 24, "Result should be 24. Case not handled")
        }
        catch
        {
            XCTFail("Wrong Error")
        }
    }
    
    func testMultiplyWithNegativeInts()
    {
        do
        {
            let result1 = try CalculatorHelper.multiply(numbers: "-2")
            XCTAssert(result1 == -2, "Result should be 2. Case not handled")
            
            let result2 = try CalculatorHelper.multiply(numbers: "2", "-3")
            XCTAssert(result2 == -6, "Result should be -6. Case not handled")
            
            let result3 = try CalculatorHelper.multiply(numbers: "-2", "3", "-4")
            XCTAssert(result3 == 24, "Result should be 24. Case not handled")
        }
        catch
        {
            XCTFail("Wrong Error")
        }
    }
    
    func testMultiplyWithLongInts()
    {
        do
        {
            let result1 = try CalculatorHelper.multiply(numbers: "222222222222", "2")
            XCTAssert(result1 == 444444444444, "Result should be 444444444444. Case not handled")
            
            let result2 = try CalculatorHelper.multiply(numbers: "-222222222222", "4")
            XCTAssert(result2 == -888888888888, "Result should be -888888888888. Case not handled")
        }
        catch
        {
            XCTFail("Wrong Error")
        }
    }
    
    func testMultiplyWithStrings()
    {
        do
        {
            let _ = try CalculatorHelper.multiply(numbers: "3", "A", "4")
        }
        catch let error as CalculatorError
        {
            XCTAssertEqual(error, CalculatorError.invalidInput)
        }
        catch
        {
            XCTFail("Wrong Error")
        }
    }
}
