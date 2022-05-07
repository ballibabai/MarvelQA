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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionsLabel.text = "I am trying new something"
    }

    @IBAction func answerButtons(_ sender: UIButton) {
        
        
    }
    
}

