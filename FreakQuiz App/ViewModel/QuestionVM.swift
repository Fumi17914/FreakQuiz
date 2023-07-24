//
//  QuestionVM.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

class QuestionVM {
        
    var allQuestions = [String]()
    
    func getFinalQuestion() -> String {
        if Game.shared.mode == .easy && !getEasyQuestion().isEmpty {
            Game.shared.question = getEasyQuestion()[Game.shared.indexEasyQuestion]
            return Game.shared.question ?? "No easy question"
            
        } else if Game.shared.mode == .hard && !getHardQuestion().isEmpty {
            Game.shared.question = getHardQuestion()[Game.shared.indexHardQuestion]
            return Game.shared.question ?? "No difficult question"
            
        } else if Game.shared.mode == .fast && !getFastQuestion().isEmpty {
            Game.shared.question = getFastQuestion()[Game.shared.indexFastQuestion]
            return Game.shared.question ?? "No fast question"
            
        } else if Game.shared.mode == .thanos && !getThanosQuestion().isEmpty {
            Game.shared.question = getThanosQuestion()[Game.shared.indexThanosQuestion]
            return Game.shared.question ?? "No hardcore question"
            
        } else if Game.shared.mode == .freak && !getFreakQuestion().isEmpty {
            Game.shared.question = getFreakQuestion()[Game.shared.indexFreakQuestion]
            return Game.shared.question ?? "No freak question"

        }
        
        return "No questions"
    }
    
    func getAnswersForQuestion() -> [String?] {
        
        for questions in Game.shared.allDataQuestions {
            if questions.question == Game.shared.question {
                Game.shared.answerOne = questions.options?[0] ?? "1"
                Game.shared.answerTwo = questions.options?[1] ?? "2"
                Game.shared.answerThree = questions.options?[2] ?? "3"
                Game.shared.answerFour = questions.options?[3] ?? "4"
                
                Game.shared.correctAnswer = questions.answer
                
                Game.shared.allAnswers = [Game.shared.answerOne, Game.shared.answerTwo, Game.shared.answerThree, Game.shared.answerFour]
            }
        }
        return Game.shared.allAnswers
    }
    
  
    func updateIndexQuestion() {
        switch Game.shared.mode {
        case .easy:
            Game.shared.indexEasyQuestion += 1
            if  Game.shared.indexEasyQuestion == getEasyQuestion().count {
                Game.shared.indexEasyQuestion = 0
            }
            
        case .hard:
            Game.shared.indexHardQuestion += 1
            if  Game.shared.indexHardQuestion == getHardQuestion().count {
                Game.shared.indexHardQuestion = 0
            }
            
        case.fast:
            Game.shared.indexFastQuestion += 1
            if  Game.shared.indexFastQuestion == getFastQuestion().count {
                Game.shared.indexFastQuestion = 0
            }
            
        case .thanos:
            Game.shared.indexThanosQuestion += 1
            if  Game.shared.indexThanosQuestion == getThanosQuestion().count {
                Game.shared.indexThanosQuestion = 0
            }
            
        case .freak:
            Game.shared.indexFreakQuestion += 1
            if  Game.shared.indexFreakQuestion == getFreakQuestion().count {
                Game.shared.indexFreakQuestion = 0
            }
            
        }
    }
    
    private func getEasyQuestion() -> [String] {
        
        allQuestions.removeAll()

        for questions in Game.shared.allDataQuestions {
            if questions.mode == .easy {
                allQuestions.append(questions.question)
            }
        }
        return allQuestions
    }
    
    private func getHardQuestion() -> [String] {
        
        allQuestions.removeAll()
        
        for questions in Game.shared.allDataQuestions {
            if questions.mode == .hard {
                allQuestions.append(questions.question)
            }
        }
        return allQuestions
    }
    
    private func getFastQuestion() -> [String] {
        
        allQuestions.removeAll()
        
        for questions in Game.shared.allDataQuestions {
            if questions.mode == .fast {
                allQuestions.append(questions.question)
               
            }
        }
        return allQuestions
        
    }
    
    private func getThanosQuestion() -> [String] {
        
        allQuestions.removeAll()

        for questions in Game.shared.allDataQuestions {
            if questions.mode == .thanos {
                allQuestions.append(questions.question)
               
            }
        }
        return allQuestions
    }
    
    private func getFreakQuestion() -> [String] {
        
        allQuestions.removeAll()

        for questions in Game.shared.allDataQuestions {
            if questions.mode == .freak {
                allQuestions.append(questions.question)
               
            }
        }
        return allQuestions
    }
    
    func updatingPlayerScore(playerSelected: String) {
        for player in Game.shared.scoreAndPlayers {
            if player.user.rawValue == playerSelected {
                player.updateScore(1)
            }
        }
    }
    
}
