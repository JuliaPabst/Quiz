//
//  ViewController.swift
//  Quiz
//
//  Created by Julia Pabst on 30.12.23.
//

import UIKit

class ViewController: UIViewController {

    let questions: [Question] = [Question(text: "Question 1", answer: 1), Question(text: "Question 2", answer: 0), Question(text: "Question 3", answer: 1)]
    
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

