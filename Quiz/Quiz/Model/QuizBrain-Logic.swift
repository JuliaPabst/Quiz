//
//  QuizBrain-Logic.swift
//  Quiz
//
//  Created by Julia Pabst on 31.12.23.
//

import Foundation

struct QuizBrain {
    let questions = [   Question(q: "A slug's blood is green.", a: 1),
                        Question(q: "Approximately one quarter of human bones are in the feet.", a: 1),
                        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: 1),
                        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: 1),
                        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: 0),
                        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: 1),
                        Question(q: "You can lead a cow down stairs but not up stairs.", a: 0),
                        Question(q: "Google was originally called 'Backrub'.", a: 1),
                        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: 1),
                        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: 0),
                        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: 0),
                        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: 1)]
    
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


