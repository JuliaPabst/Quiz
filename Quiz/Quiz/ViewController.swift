//
//  ViewController.swift
//  Quiz
//
//  Created by Julia Pabst on 30.12.23.
//

import UIKit

class ViewController: UIViewController {

    let questions: [Question] = [  Question(q: "A slug's blood is green.", a: 1),
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
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        print(sender.tag)
        sender.alpha = 0.5
        sender.setTitleColor(sender.titleColor(for: .normal)?.withAlphaComponent(0.5), for: .normal)

      
        UIView.animate(withDuration: 0.6) {
            sender.alpha = 1.0
            sender.setTitleColor(sender.titleColor(for: .normal)?.withAlphaComponent(1.0), for: .normal)
        }
        
        if currentQuestion < questions.count - 1 {
            currentQuestion += 1
            updateUI()
            progressBar.progress = Float(currentQuestion) / Float(questions.count)
        } else if currentQuestion == questions.count - 1{
            progressBar.progress = 1
        }
    }
    
    func updateUI (){
        questionLabel.text = questions[currentQuestion].text
    }
    
}

