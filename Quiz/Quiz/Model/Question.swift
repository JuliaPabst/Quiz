//
//  Question.swift
//  Quiz
//
//  Created by Julia Pabst on 31.12.23.
//

import Foundation

struct Question {
    let text: String
    let answer: Int
    
    init(q: String, a: Int){
        text = q
        answer = a
    }
}
