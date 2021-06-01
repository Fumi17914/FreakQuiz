//
//  PlayerReadyView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct PlayerReadyView: View {
    
    var randomPlayer = Game.shared.players.randomElement()
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Text("es tu turno")
                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                        .foregroundColor(.white)
                    Spacer()
                                        
                    Image(randomPlayer ?? "Batman")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(50)
                    
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 235, height: 80, alignment: .center)
                        .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                        .opacity(0.8)
                        .textCase(.uppercase)
                        .overlay(Text(randomPlayer ?? "batman")
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
                    
                    NavigationLink(destination: EmptyView()) {
                        EmptyView()
                    }
                    Spacer()
                    
                }
            }
            .edgesIgnoringSafeArea(.all)

        }
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
