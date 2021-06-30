//
//  QuestionsModel.swift
//  iOSQuizApp
//
//  Created by USER on 29/06/21.
//

import Foundation
struct QuestionsModel {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
