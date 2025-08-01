//
//  SecurityQuestions.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 31/07/2025.
//

import Foundation

struct SecurityQuestions: Identifiable {
    var id: String
    var question: String
    var answer: String
    
    static let sampleQuestions: [SecurityQuestions] = [
        SecurityQuestions(id: "Q1", question: "What is your favorite color", answer: ""),
        SecurityQuestions(id: "Q2", question: "What is your favorite city", answer: ""),
        SecurityQuestions(id: "Q3", question: "What is your nickname", answer: ""),
        SecurityQuestions(id: "Q4", question: "What is your favorite movie", answer: ""),
        SecurityQuestions(id: "Q5", question: "What is your favorite sport", answer: "")
    ]
}
