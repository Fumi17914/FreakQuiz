//
//  PlayerReadyView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct PlayerReadyView: View {
    
    private func randomPlayer() -> String {
        Game.shared.selectedPlayer = Game.shared.players.randomElement()
        return Game.shared.selectedPlayer ?? "No player"
    }
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                if Game.shared.mode == .thanos {
                    Text("Pásale el móvil a")
                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                        .foregroundColor(.white)
                        .offset(y: -20)
                } else {
                    Text("es tu turno")
                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                        .foregroundColor(.white)
                        .offset(y: -20)

                }
                Spacer()
                
                Image(randomPlayer())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(50)
                
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 235, height: 80, alignment: .center)
                    .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                    .opacity(0.8)
                    .textCase(.uppercase)
                    .overlay(Text(Game.shared.selectedPlayer ?? "No player")
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/45))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center))
                    
                    .offset(y: -45)
                
                Spacer()
                
                NavigationLink(destination: QuestionView()) {
                    Image("pressStart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(25)
                        .offset(x:5, y:30)
                }
                Spacer()
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct PlayerReadyView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerReadyView()
    }
}

