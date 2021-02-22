//
//  GameData.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import Foundation

typealias Questions = [Question]
typealias Tests = [String]

struct GameData: Codable {
    let questions: Questions
    let tests: Tests
}
