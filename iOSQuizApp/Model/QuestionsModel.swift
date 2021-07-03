//
//  QuestionsModel.swift
//  iOSQuizApp
//
//  Created by USER on 29/06/21.
//

import Foundation
struct QuestionsModel {
    let question: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }
}
