//
//  ViewController.swift
//  MarvelQA
//
//  Created by İbrahim Ballıbaba on 7.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    
    var quizBrain = QuizBrain()
    
    var qNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func answerButtons(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight == true {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        
        questionsLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        for i in 0..<buttons.count{
            buttons[i].setTitle(quizBrain.quiz[qNumber].answer[i], for: UIControl.State.normal)
            buttons[i].backgroundColor = UIColor.clear
        }
        
        
        if qNumber + 1 < quizBrain.quiz.count {
            qNumber += 1
        }else {
            qNumber = 0
        }
        
        
    }
    
}

