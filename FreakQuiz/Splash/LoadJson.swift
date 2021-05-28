//
//  LoadJson.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 26/4/21.
//

import UIKit

class LoadJson {
    
    func getJson() {
        loadJson()
    }

    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
               
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        return nil
    }
    
    private func loadJson() {
        guard let jsonData = readLocalFile(forName: "sampleData") else {
            return
        }
        
        let decoder = JSONDecoder()
        do {
            let data = try decoder.decode(GameData.self, from: jsonData)
            Game.shared.questions = data.questions
            Game.shared.tests = data.tests
            
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
