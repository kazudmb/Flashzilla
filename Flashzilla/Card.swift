//
//  Card.swift
//  Flashzilla
//
//  Created by KazukiNakano on 2020/08/07.
//  Copyright © 2020 dmb. All rights reserved.
//

import Foundation

struct Card {
    let prompt: String
    let answer: String
    
    static var example: Card {
        Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
    }
}
