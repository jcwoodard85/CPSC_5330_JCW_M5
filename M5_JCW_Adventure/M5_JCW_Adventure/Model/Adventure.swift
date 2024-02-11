//
//  Adventure.swift
//  M5_JCW_Adventure
//
//  Created by user247663 on 2/8/24.
//

import Foundation

struct Adventure {
    
    init(_ statement: String, _ o_one: String, _ o_two: String) {
        prompt = statement
        option_one = o_one
        option_two = o_two
    }
    
    var prompt: String
    var option_one: String
    var option_two: String
    
}
