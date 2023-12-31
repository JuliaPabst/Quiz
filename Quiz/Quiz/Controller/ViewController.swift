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
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.tag
        
        let success = quizBrain.checkAnswer(userAnswer)
        
        
        if success == true{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        sender.setTitleColor(sender.titleColor(for: .normal)?.withAlphaComponent(0.5), for: .normal)

      
        UIView.animate(withDuration: 0.6) {
           
            sender.setTitleColor(sender.titleColor(for: .normal)?.withAlphaComponent(1.0), for: .normal)
            sender.backgroundColor = UIColor.clear
            
            
        }
        
        if currentQuestion < questions.count - 1 {
            currentQuestion += 1
            updateUI()
            
        } 
    }
    
    func updateUI (){
        questionLabel.text = questions[currentQuestion].text
        
        progressBar.progress = Float(currentQuestion + 1) / Float(questions.count)
       
    }
    
}

