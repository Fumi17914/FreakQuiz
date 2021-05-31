//
//  QuestionModel.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 31/5/21.
//

import Foundation

class QuestionModel {
    
    var myData = QuestionsAndTestSample()
    
    var allQuestions = [String]()
    var answerOne = ""
    var answerTwo = ""
    var answerThree = ""
    var answerFour = ""
        
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
        return allQuestions    }
    
    func getFinalQuestion() -> String {
        if Game.shared.mode == .easy {
            return getEasyQuestion().randomElement() ?? "No Easy Questions"
            
        } else if Game.shared.mode == .hard {
            return getHardQuestion().randomElement() ?? "No Hard Questions"
            
        } else if Game.shared.mode == .fast {
            return getFastQuestion().randomElement() ?? "No Fast Questions"
        }
        
        return ""
    }
    
    func getAnswersForQuestion() -> [String] {
        
        for questions in myData.questions {
            if questions.question == getFinalQuestion() {
                answerOne = questions.options?[0] ?? "1"
                answerTwo = questions.options?[1] ?? "2"
                answerThree = questions.options?[2] ?? "3"
                answerFour = questions.options?[3] ?? "4"
            }
        }
        return [answerOne, answerTwo, answerThree, answerFour]
    }
    
}
