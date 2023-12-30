//
//  ViewController.swift
//  Quiz
//
//  Created by Julia Pabst on 30.12.23.
//

import UIKit

class ViewController: UIViewController {

    let questions = ["Question 1", "Question 2", "Question 3"]
    
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
        
        if currentQuestion < questions.count - 1 {
            currentQuestion += 1
            updateUI()
            progressBar.progress = Float(currentQuestion) / Float(questions.count)
        }
    }
    
    func updateUI (){
        questionLabel.text = questions[currentQuestion]
    }
    
}

