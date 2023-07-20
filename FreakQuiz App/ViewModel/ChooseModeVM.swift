//
//  ChooseModeVM.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import Foundation

class ChooseModeVM {
    
    func easyMode() {
        print("Easy Mode Selected")
        Game.shared.mode = .easy
    }
    
    func hardMode() {
        print("Hard Mode Selected")
        Game.shared.mode = .hard
    }
    
    func fastMode() {
        print("Fast Mode Selected")
        Game.shared.mode = .fast
    }
    
    func thanosMode() {
        print ("Thanos Mode Selected")
        Game.shared.mode = .thanos
    }
    
    func freakMode() {
        print ("Master Freakverse Mode Selected")
        Game.shared.mode = .freak
    }
        
    func loadQuestions() {
        guard let url = Bundle.main.url(forResource: "myData", withExtension: "json") else {
            // Manejo de errores si no se encuentra el archivo JSON
            print("Error al encontrar el archivo JSON.")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let questionData = try decoder.decode(QuestionsData.self, from: data)
            Game.shared.allDataQuestions = questionData.questions
        } catch {
            // Manejo de errores si hay problemas al decodificar el JSON
            print("Error al decodificar el JSON: \(error)")
        }
    }

    
}
