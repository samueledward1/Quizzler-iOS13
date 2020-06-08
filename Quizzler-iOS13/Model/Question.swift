//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Samuel Edward Djunarwanto on 25/4/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let problem : String
    let choices : [String]
    let answer : String
    
    init(q: String, a: [String], correctAnswer : String){
        problem = q
        self.choices = a
        answer = correctAnswer
    }
}
