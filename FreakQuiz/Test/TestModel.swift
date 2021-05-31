//
//  TestModel.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 28/5/21.
//

import Foundation

class TestModel {
    
    var scoreImage: String = "scoreYellow"
    
    func scoreImageMode() -> String {
        if Game.shared.mode == .hard {
            scoreImage = "scoreRed"
        } else if Game.shared.mode == .fast {
            scoreImage = "scoreBlue"
        }
        
        return scoreImage
    }
    
}
