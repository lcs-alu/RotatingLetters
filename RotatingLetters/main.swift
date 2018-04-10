//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Input

// Loop forever until we ger good input
prompting: while 1 == 1 {
    
    // Prompt the user
    print("Input word is?")
    
    // Wait for input
    // 1 Make sure it is not nil
    guard let giveInput = readLine() else {
        
        // If we got here, input is nil
        // Prompt again
        continue // Continue with the next iteration of while loop
        
    }
    // 2 Is the input the correct length?
    if giveInput.count < 1 || giveInput.count > 30 {
        // If we got there, input is too short or too long
        continue // Prompt again
    }
    // 3 Check to ensure there is only uppercase letters and no spaces
    checking: for individualCharacter in giveInput {
        
        // Debug Print the character we are looking at
        print(individualCharacter)
        
        // Check the character
        switch individualCharacter {
        case "A", "B", "C", "D" :
            continue checking// Go to the next character in the string
        default:
            continue prompting // Stop looking, we find bad input
        }
    }
    // If we got to this point, we know the input is good
    break// Quit the while loop and begin Process section
}

