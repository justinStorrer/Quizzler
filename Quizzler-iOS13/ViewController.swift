//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizQuestions = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "False"],
        ["Three + Eight is less than Ten", "True"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quizQuestions[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("That's correct!")
        } else {
            print("Wrong")
        }
        
        if questionNumber < quizQuestions.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
        
    }
    
    func updateUI() {
        questionLabel.text = quizQuestions[questionNumber][0]
    }
    
}

