//
//  ViewController.swift
//  Quiz
//
//  Created by Julia Pabst on 30.12.23.
//

import UIKit

class ViewController: UIViewController {

 var quizBrain = QuizBrain()
    
   
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var firstAnswer: UIButton!
    @IBOutlet var secondAnswer: UIButton!
    @IBOutlet var thirdAnswer: UIButton!
    @IBOutlet var score: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
           
           let userAnswer = sender.tag
           let success = quizBrain.checkAnswer(userAnswer)
           
           if success {
               sender.backgroundColor = UIColor.green
           } else {
               sender.backgroundColor = UIColor.red
           }
           
           UIView.animate(withDuration: 0.6, animations: {
               sender.alpha = 0.5
           }) { (finished) in
               UIView.animate(withDuration: 0.2) {
                   sender.alpha = 1.0
                   sender.backgroundColor = UIColor.clear
                   sender.tintColor = UIColor.clear
               }
           }
           
           quizBrain.nextQuestion()
           
           Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       }
    
    @objc func updateUI (){
        questionLabel.text = quizBrain.getQuestionText()
        firstAnswer.setTitle(quizBrain.getAnswer(0), for: .normal)
        secondAnswer.setTitle(quizBrain.getAnswer(1), for: .normal)
        thirdAnswer.setTitle(quizBrain.getAnswer(2), for: .normal)
        progressBar.progress = quizBrain.getProgress()
        
        score.text = "Score: \(quizBrain.getScore())"
    }
    
}

