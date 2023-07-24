//
//  PlayerReadyView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct PlayerReadyView: View {
            
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack {
            sharedViews.backgroundImage()
            
            VStack {
                Spacer()
                
                sharedViews.titleView(width: width - 50,
                                      height: height / 10,
                                      text: "Es tu turno",
                                      textSize:  height / 33)
                Spacer()
                
                sharedViews.imageResizableFit(idText: Game.shared.players[Game.shared.indexPlayer])
                    .padding(50)
                
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 235, height: 80, alignment: .center)
                    .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                    .opacity(0.9)
                    .overlay(Text(Game.shared.players[Game.shared.indexPlayer])
                                .font(Font.custom("PixelEmulator",
                                                  size: height / 45))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center))
                    .addBorder(Color.black, width: 2, cornerRadius: 30)
                    .offset(y: -45)
                    .opacity(0.9)
    
                Spacer(minLength: 90)
                
                sharedViews.pressStartView(destination: QuestionView())
                
                Spacer()
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .onAppear {
            Game.shared.selectedPlayer = Game.shared.players[Game.shared.indexPlayer]
        }
        .onDisappear {
            Game.shared.indexPlayer += 1
            if Game.shared.indexPlayer == Game.shared.players.count {
                Game.shared.indexPlayer = 0
            }
        }
    }
}

struct PlayerReadyView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerReadyView()
    }
}

