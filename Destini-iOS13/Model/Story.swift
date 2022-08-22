//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    
    let story_title: String
    let left_choice: String
    let destination1: Int
    let right_choice: String
    let destination2: Int
    
    init(title: String, choice1: String, choice1Destination: Int,   choice2: String, choice2Destination: Int ) {
        
        story_title = title
        left_choice = choice1
        destination1 = choice1Destination
        right_choice = choice2
        destination2 = choice2Destination
        
        
    }
    
    
}
