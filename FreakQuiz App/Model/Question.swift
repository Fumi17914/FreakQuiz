//
//  Question.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import Foundation

struct Question: Codable {
    let id: Int
    let mode: Mode
    let question: String
    let options: [String]?
    let answer: Int?
    
    enum Mode: String, Codable {
        case easy = "easy"
        case hard = "hard"
        case fast = "fast"
        case thanos = "thanos"
        case freak = "freak"
    }
}
