//
//  QuizLogic.swift
//  Quizzler-iOS13
//
//  Created by Samuel Edward Djunarwanto on 25/4/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation


struct QuizLogic{
    let quiz : [Question] = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
       Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
       Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
       Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
       Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
       Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
       Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
       Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
       Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
       Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var qNumber : Int = 0
    var score : Int = 0
    
    
    func isCorrect(userAnswer : String) -> Bool{
        return userAnswer == quiz[qNumber].answer
    }
    
    func getQuestion() -> String{
        return quiz[qNumber].problem
    }
    
    func getProgress() -> Float{
        return Float(qNumber + 1)/Float(quiz.count)
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getChoice(index : Int) -> String{
        return quiz[qNumber].choices[index]
    }
    
    
    
    mutating func next(){
        if qNumber < quiz.count - 1{
            qNumber += 1
        }
        else{
            qNumber = 0
        }
    }
    
    
}
