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
    
    //test 1:
    let givenNumerator = readLine()
    // Waiting for input
    
    guard let integerNumerator = givenNumerator else {
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
    //test 1:
    let givenDenomator = readLine()
//wait for the input
    
    guard let givenInteger = givenDenomator else{
       //check for nil
        continue
    }
    //test 2:
    guard let integerDenomator = Int(givenDenomator!) else{
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
    print("Result is:")
    print(quotient)
}
    //if the numerator is 0
else if numerator == 0 {
    print("result is \(0)")
} else {
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
    break //stop the loop
        }
}
    print(GCF)
    print("\(quotient) \(reminder / GCF) /\(denomnator / GCF)")

}
// Report results to the user here

