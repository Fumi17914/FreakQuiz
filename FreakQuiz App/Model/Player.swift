//
//  Player.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import Foundation

class Player {
    var user: Characters
    var score: Int = 0
    
    init(user: Characters, score: Int) {
        self.user = user
        self.score = score
    }
    
    func updateScore(_ score: Int) {
        self.score += score
    }
    
    enum Characters: String {
        case Batman = "Batman"
        case Superman = "Superman"
        case Lobezno = "Wolverine"
        case Doctor = "Meredith Grey"
        case Girl = "Aventurera"
        case Noel = "Santa Claus"
        case Indy = "Indiana Jones"
        case Spiderman = "Spider-Man"
        case Devil = "Diablo"
        case Deadpool = "Deadpool"
    }
}

