//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
var numerator = 0
var denomnator = 0

// PROCESS
while 1 == 1 {
    print("numerator")
    
    // Waiting for input
    guard let integerNumerator = readLine() else {
        continue
        // Check for nil
    }
    //test 2:
    guard let givenInput = Int(integerNumerator)else{
        continue
    }
    //test 3:
    if givenInput < 0 {
        continue
    }
    numerator = givenInput
    break
}

print(numerator)

while 1 == 1 {
    print("denomator")
    
    //wait for the input
    guard let givenInteger = readLine() else{
        //check for nil
        continue
    }
    //test 2:
    guard let integerDenomator = Int(givenInteger) else{
        //check for integer
        continue
    }
    //test 3:
    if integerDenomator < 0 {
        continue
    }
    denomnator = integerDenomator
    break
}

print(denomnator)

// print quotient and reminder
var quotient = numerator / denomnator
var reminder = numerator % denomnator

    //if the result is in whole number
if reminder == 0 {
    print("Result is:", quotient)
}
    //if the reminder is the factor of the denomnator
else if denomnator % reminder == 0 {
    let reducedNumerator = 1
    let reduceDomnator =  denomnator / reminder
    print("\(quotient) \(reducedNumerator)/\(reduceDomnator)")
    // the reminder is not the factor of the denomnator
} else  {
    // we must reduce.
    //loop backwards from the halfway point of the numerator
    var GCF = 1 //not the real GCF
    for i in stride(from: reminder / 2, through: 2, by: -1){
        print(i)
        //when the vounter varibale "i" evenly divides into both
        //th reminder and the original denominator...we have the GCF
        
        if reminder % i == 0 && denomnator % i == 0 {
            //Now we know that "i" is the greatest common factor (GCF)
            GCF = i
            break
        }
    }
            //Get the finial fraction
            let finialReminder = reminder / GCF
            let finialDenomnator = denomnator / GCF
        print("\(quotient) \(finialReminder) /\(finialDenomnator)")

    }
// Report results to the user here

