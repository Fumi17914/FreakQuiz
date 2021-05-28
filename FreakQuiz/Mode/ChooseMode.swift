//
//  ChooseMode.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 27/5/21.
//

import Foundation

class ChooseMode {
    
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
    
}
