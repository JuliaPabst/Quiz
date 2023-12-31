//
//  QuizBrain-Logic.swift
//  Quiz
//
//  Created by Julia Pabst on 31.12.23.
//

import Foundation

struct QuizBrain {
    let questions = [    Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: 1),
                         Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: 2),
                         Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: 1),
                         Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: 0),
                         Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: 2),
                         Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: 1),
                         Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: 1),
                         Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: 0),
                         Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: 1),
                         Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: 1)]
    
    var currentQuestion = 0
    
    var currentScore = 0
    
    mutating func checkAnswer(_ userAnswer: Int) -> Bool{
        let actualAnswer = questions[currentQuestion].answer
        
        if userAnswer == actualAnswer{
            currentScore += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return currentScore
    }
    
    func getQuestionText () -> String {
        return questions[currentQuestion].text
    }
    
    func getProgress() -> Float {
        return Float(currentQuestion + 1) / Float(questions.count)
    }
    
    mutating func nextQuestion(){
        if currentQuestion + 1 < questions.count {
            currentQuestion += 1
        } else {
            currentQuestion = 0
            currentScore = 0
        }
    }
}


