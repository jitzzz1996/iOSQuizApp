//
//  QuizLogic.swift
//  iOSQuizApp
//
//  Created by USER on 30/06/21.
//

import Foundation
struct QuizLogic {
    /*let questionsModel = [QuestionsModel(q: "A slug's blood is green.", a: "True"),
        QuestionsModel(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        QuestionsModel(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        QuestionsModel(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        QuestionsModel(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        QuestionsModel(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        QuestionsModel(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        QuestionsModel(q: "Google was originally called 'Backrub'.", a: "True"),
        QuestionsModel(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        QuestionsModel(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        QuestionsModel(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        QuestionsModel(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]*/
    let questionModel = [QuestionsModel(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                         QuestionsModel(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                         QuestionsModel(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                         QuestionsModel(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                         QuestionsModel(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                         QuestionsModel(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                         QuestionsModel(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                         QuestionsModel(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                         QuestionsModel(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                         QuestionsModel(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(answer: String) -> Bool {
        if questionModel[questionNumber].correctAnswer == answer {
            self.score += 1
           return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        if self.questionNumber  < questionModel.count - 1 {
            self.questionNumber += 1
        } else {
            self.questionNumber = 0
            self.score = 0
        }
    }
    
    func showQuestion() -> String {
        return questionModel[questionNumber].question
    }
    
    func updatePogressBar() -> Float {
        return Float(questionNumber + 1) / Float(questionModel.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    func setOptions() -> [String] {
       return questionModel[questionNumber].answer
    }
}
