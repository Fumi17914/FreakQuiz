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
    
    enum Mode: Int, Codable {
        case easy
        case hard
        case fast
        case thanos
    }
}
