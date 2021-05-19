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
    
    
    @IBOutlet weak var trueBtn: UIButton!
    
    
    @IBOutlet weak var falseBtn: UIButton!
    
    @IBOutlet weak var progress: UIProgressView!
    
    let quiz = [
        ["Two + Three is equal to Five","True"],
        ["Two - Three is equal to Two","False"],
        ["Two + One is equal to Three","True"],
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    @IBAction func answerCheck(_ sender: UIButton) {
        if sender.currentTitle == quiz[questionNumber][1]{
            print("Right")
        }else{
            print("Wrong")
        }
        if questionNumber + 1 < quiz.count {
            questionNumber = questionNumber + 1
        }else{
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI(){
        questionlbl.text = quiz[questionNumber][0]
    }
    

}





