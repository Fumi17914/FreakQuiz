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
    
}
