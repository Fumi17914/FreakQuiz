//
//  ScoreVM.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import Foundation

class ScoreVM {
    
    var playersScoreList: [Player] = []
    var finalPlayersAndScore = Game.shared.scoreAndPlayers.sorted(by: {$0.score > $1.score})

    var getFinalPlayers: [Player]  {
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
