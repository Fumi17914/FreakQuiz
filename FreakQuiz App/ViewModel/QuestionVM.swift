//
//  QuestionVM.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

class QuestionVM {
    
    var myData = QuestionsAndTestSample()
    
    var allQuestions = [String]()
    
    func getFinalQuestion() -> String {
        if Game.shared.mode == .easy {
            Game.shared.question = getEasyQuestion().randomElement()
            return Game.shared.question ?? "No easy question"
            
        } else if Game.shared.mode == .hard {
            Game.shared.question = getHardQuestion().randomElement()
            return Game.shared.question ?? "No difficult question"
            
        } else if Game.shared.mode == .fast {
            Game.shared.question = getFastQuestion().randomElement()
            return Game.shared.question ?? "No fast question"
            
        } else if Game.shared.mode == .thanos {
            Game.shared.question = getThanosQuestion().randomElement()
            return Game.shared.question ?? "No hardcore question"
            
        } else if Game.shared.mode == .freak {
            Game.shared.question = getFreakQuestion().randomElement()
            return Game.shared.question ?? "No freak question"

        }
        
        return "No questions"
    }
    
    func getAnswersForQuestion() -> [String?] {
        
        for questions in myData.questions {
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
    
  
    
    private func getEasyQuestion() -> [String] {
        
        allQuestions.removeAll()

        for questions in myData.questions {
            if questions.mode == .easy {
                allQuestions.append(questions.question)
            }
        }
        return allQuestions
    }
    
    private func getHardQuestion() -> [String] {
        
        allQuestions.removeAll()
        
        for questions in myData.questions {
            if questions.mode == .hard {
                allQuestions.append(questions.question)
            }
        }
        return allQuestions
    }
    
    private func getFastQuestion() -> [String] {
        
        allQuestions.removeAll()
        
        for questions in myData.questions {
            if questions.mode == .fast {
                allQuestions.append(questions.question)
               
            }
        }
        return allQuestions
        
    }
    
    private func getThanosQuestion() -> [String] {
        
        allQuestions.removeAll()

        for questions in myData.questions {
            if questions.mode == .thanos {
                allQuestions.append(questions.question)
               
            }
        }
        return allQuestions
    }
    
    private func getFreakQuestion() -> [String] {
        
        allQuestions.removeAll()

        for questions in myData.questions {
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
