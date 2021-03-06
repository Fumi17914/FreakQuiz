//
//  QuestionModel.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 31/5/21.
//

import SwiftUI

class QuestionModel {
    
    var myData = QuestionsAndTestSample()
    
    var allQuestions = [String]()
 
    func getFinalQuestion() -> String {
        if Game.shared.mode == .easy {
            Game.shared.question = getEasyQuestion().randomElement()
            return Game.shared.question ?? "No easy question"
            
        } else if Game.shared.mode == .hard {
            Game.shared.question = getHardQuestion().randomElement()
            return Game.shared.question ?? "No hard question"
            
        } else if Game.shared.mode == .fast {
            Game.shared.question = getFastQuestion().randomElement()
            return Game.shared.question ?? "No fast question"
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
        
        for questions in myData.questions {
            if questions.mode == .easy {
                allQuestions.append(questions.question)
            }
        }
        return allQuestions
    }
    
    private func getHardQuestion() -> [String] {
        
        for questions in myData.questions {
            if questions.mode == .hard {
                allQuestions.append(questions.question)
            }
        }
        return allQuestions
    }
    
    private func getFastQuestion() -> [String] {
        
        for questions in myData.questions {
            if questions.mode == .fast {
                allQuestions.append(questions.question)
               
            }
        }
        return allQuestions
        
    }
    
}
