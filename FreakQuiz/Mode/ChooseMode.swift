//
//  ChooseMode.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 27/5/21.
//

import Foundation

class ChooseMode {
    
    func easyMode() {
        Game.shared.mode = .easy
        print("Easy Mode Selected")
    }
    
    func hardMode() {
        Game.shared.mode = .hard
        print("Hard Mode Selected")

    }
    
    func fastMode() {
        Game.shared.mode = .fast
        print("Fast Mode Selected")
    }
    
}
