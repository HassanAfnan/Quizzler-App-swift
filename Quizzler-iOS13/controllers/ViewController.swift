//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionlbl: UILabel!
    
    @IBOutlet weak var scorelbl: UILabel!
    
    @IBOutlet weak var trueBtn: UIButton!
    
    
    @IBOutlet weak var falseBtn: UIButton!
    
    @IBOutlet weak var progress: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        scorelbl.text = "score: 0"
    }
    
    
    @IBAction func answerCheck(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
         
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
            //scorelbl.text = quizBrain.getScore()
        }else{
            sender.backgroundColor = UIColor.red
            //scorelbl.text = quizBrain.getScore()
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo:nil, repeats:false)
    }
    
    @objc func updateUI(){
        scorelbl.text = quizBrain.getScore()
        questionlbl.text = quizBrain.quizText()
        progress.progress = quizBrain.quizProgress()
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
    }
    

}





