//
//  Game.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

class Game {
    // MARK: - Properties
    static let shared = Game()
    
    // Initialization
    private init() {}
    
    var mode: Question.Mode = .easy
    var question: String?
    var tests: Tests? = nil
    
    var answerOne: String? = ""
    var answerTwo: String? = ""
    var answerThree: String? = ""
    var answerFour: String? = ""
    var allAnswers: [String?] = []
    var correctAnswer: Int? = nil
    
    // MARK: Prueba a realizar al azar
    var test: String {
        return tests?.randomElement() ?? "Do nothing"
    }
    
    // MARK: Lista de jugadores
    var players: [String] = []
    var selectedPlayer: String? = nil
    
    // MARK: Configurar color de las views según modo
    var colorMode: Color = .yellow
    func modeSelectedBackgroundColor() -> Color {
        if Game.shared.mode == .hard {
            colorMode = .red
            return colorMode
        } else if Game.shared.mode == .fast {
            colorMode = .blue
            return colorMode
            
        }
        return colorMode
    }
    
    
    var scoreAndPlayers: [Player] = [Player(user: Player.Characters.Batman, score: 0),
                                     Player(user: Player.Characters.Superman, score: 0),
                                     Player(user: Player.Characters.Spiderman, score: 0),
                                     
                                     Player(user: Player.Characters.Girl, score: 0),
                                     
                                     Player(user: Player.Characters.Deadpool, score: 0),
                                     Player(user: Player.Characters.Doctor, score: 0),
                                     Player(user: Player.Characters.Devil, score: 0),
                                     Player(user: Player.Characters.Indy, score: 0),
                                     Player(user: Player.Characters.Noel, score: 0),
                                     Player(user: Player.Characters.Lobezno, score: 0)]
    
    
    //var questions: Questions? = nil
    
    // MARK: Preguntas según modo escogido
    /*var questionsEasy: [Question] {
     return questions?.filter{ $0.mode == .easy} ?? []
     }
     var questionsHard: [Question] {
     return questions?.filter{ $0.mode == .hard} ?? []
     }
     
     var questionsFast: [Question] {
     return questions?.filter{ $0.mode == .fast} ?? []
     
     }*/
    
    
    // MARK: Función questions al azar según modo
    /*var randomQuestion: String? {
     if Game.shared.mode == .easy {
     return Game.shared.questionsEasy.randomElement()?.question
     
     } else if Game.shared.mode == .hard {
     return Game.shared.questionsHard.randomElement()?.question
     
     } else if Game.shared.mode == .fast {
     return Game.shared.questionsFast.randomElement()?.question
     
     }
     
     return "No questions found"
     }*/
}

