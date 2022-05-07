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
    @IBOutlet var buttons: [UIButton]!
    
    
    let quiz = ["deneme", "deneme2", "deneme3"]
    
    var qNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func answerButtons(_ sender: UIButton) {
        
        qNumber += 1
        updateUI()
        
    }
    
    func updateUI() {
        
        questionsLabel.text = quiz[qNumber]
        
    }
    
}

