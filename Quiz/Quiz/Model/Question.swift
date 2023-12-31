//
//  Question.swift
//  Quiz
//
//  Created by Julia Pabst on 31.12.23.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: Int
    
    init(q: String, a: [String], correctAnswer: Int){
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
