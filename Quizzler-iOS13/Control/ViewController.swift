//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreBar: UILabel!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var questionBox: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    

    @IBAction func answerButton(_ sender: UIButton) {
        
        let answer = sender.currentTitle
        
        let correct = quizBrain.isCorrect(userAnswer: answer!)
        
        if(correct){
            sender.backgroundColor  = UIColor.green
            quizBrain.score += 1
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            
            self.quizBrain.next()
            self.updateUI()
            
        }
        
    
    }
    
    
    func updateUI(){
        
        questionBox.text = quizBrain.getQuestion()
        
        scoreBar.text = "Score: \(quizBrain.getScore())"
        
        var  currIndex : Int =  0
        var  choice : String = quizBrain.getChoice(index : currIndex)
        
        
        firstButton.setTitle(choice, for: .normal)
        currIndex += 1
        choice =  quizBrain.getChoice(index: currIndex)
        secondButton.setTitle(choice, for: .normal)
        currIndex += 1
        choice =  quizBrain.getChoice(index: currIndex)
        thirdButton.setTitle(choice, for: .normal)
        
        
        firstButton.backgroundColor = UIColor.clear
        secondButton.backgroundColor = nil
        thirdButton.backgroundColor = UIColor.clear
        
        progressBar.progress = quizBrain.getProgress()
    }
    




}

