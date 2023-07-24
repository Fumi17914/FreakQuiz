//
//  GameButtonsView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 24/7/23.
//

import SwiftUI

struct GameButtonsView: View {
    
    @State private var isScoreSelected: Bool = false
    @State private var isPlayerSelected: Bool = false
    @State private var isModeSelected: Bool = false
    
    let sharedViews = SharedViews()
    
    var body: some View {
        HStack {
            
            Spacer()
            sharedViews.gameButtons(destination: ChooseModeView(),
                                    isActive: $isModeSelected,
                                    foregroundColor: Game.shared.modeSelectedBackgroundColor(),
                                    opacity: 0.95,
                                    text: "gamingChair")
            Spacer()
            sharedViews.gameButtons(destination: ChoosePlayerView(),
                                    isActive: $isPlayerSelected,
                                    foregroundColor: Game.shared.modeSelectedBackgroundColor(),
                                    opacity: 0.95,
                                    text: "gamingController")
            Spacer()
            sharedViews.gameButtons(destination: ScoreView(),
                                    isActive: $isScoreSelected,
                                    foregroundColor: Game.shared.modeSelectedBackgroundColor(),
                                    opacity: 0.95,
                                    text: "gamingTrophy")
            Spacer()

        }.offset(y: -25)
    }
}

struct GameButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        GameButtonsView()
    }
}
