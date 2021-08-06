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
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                    .textCase(.uppercase)
                    .overlay(Text(Game.shared.mode == .thanos ? "Pásale el móvil a" : "Es tu turno")
                                .font(Font.custom("PixelEmulator", size: Game.shared.mode == .thanos ? UIScreen.main.bounds.height/38 : UIScreen.main.bounds.height/33 ))
                                .foregroundColor(.black)
                                .padding())
                    .foregroundColor(.white)
                    .addBorder(Color.black, width: 2, cornerRadius: 30)

                
                Spacer()
                
                Image(randomPlayer())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(50)
                
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 235, height: 80, alignment: .center)
                    .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                    .opacity(0.9)
                    .textCase(.uppercase)
                    .overlay(Text(Game.shared.selectedPlayer ?? "No player")
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/45))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center))
                    .addBorder(Color.black, width: 2, cornerRadius: 30)
                    .offset(y: -45)

                
                Spacer()
                
                NavigationLink(destination: QuestionView()) {
                    Image("pressStart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(25)
                        .offset(x:5, y:20)
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

