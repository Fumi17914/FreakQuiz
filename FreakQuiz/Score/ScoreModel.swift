//
//  ScoreModel.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 2/6/21.
//

import Foundation

class ScoreModel {
    
    var playersScoreList: [Player] = []
    var finalPlayersAndScore = Game.shared.scoreAndPlayers.sorted(by: {$0.score > $1.score})

    func getFinalPlayers() -> [Player] {
        for player in finalPlayersAndScore {
            for selectedPlayer in Game.shared.players {
                if selectedPlayer == player.user.rawValue {
                    playersScoreList.append(player)
                }
            }
        }
        
        return playersScoreList
    }
}
