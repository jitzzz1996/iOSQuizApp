//
//  ViewController.swift
//  iOSQuizApp
//
//  Created by USER on 29/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    var quizLogic = QuizLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    @IBAction func answerButtonAction(_ sender: UIButton) {
        let answerGiven = sender.currentTitle ?? ""
        let isThisCorrectAnswer = self.quizLogic.checkAnswer(answer: answerGiven)
        if isThisCorrectAnswer {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        self.quizLogic.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(setupUI), userInfo: nil, repeats: false)
    }
    @objc func setupUI() {
        self.questionLabel.text = self.quizLogic.showQuestion()
        let options = self.quizLogic.setOptions()
        self.trueButton.setTitle(options[0], for: .normal)
        self.secondButton.setTitle(options[1], for: .normal)
        self.falseButton.setTitle(options[2], for: .normal)
        self.progressView.progress = self.quizLogic.updatePogressBar()
        self.scoreLabel.text = "Score \(self.quizLogic.getScore())"
        self.trueButton.backgroundColor = .clear
        self.falseButton.backgroundColor = .clear
        self.secondButton.backgroundColor = .clear
    }
}

