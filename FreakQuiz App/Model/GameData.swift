//
//  GameData.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import Foundation

typealias Questions = [Question]
typealias Tests = [String]

struct GameData: Codable {
    let questions: Questions
    let tests: Tests
}

struct QuestionsData: Codable {
    let questions: [Question]
}
