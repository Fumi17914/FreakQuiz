//
//  CorrectView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct CorrectView: View {
    
    let correctModel = CorrectAndTestModel()
    
    @State private var isScoreSelected: Bool = false
    @State private var isPlayerSelected: Bool = false
    @State private var isPressStartSelected: Bool = false
    
    var body: some View {
        ZStack{
            Image ("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer(minLength: 50)
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                    .textCase(.uppercase)
                    .opacity(0.8)
                    .overlay(Text("correcto")
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                .foregroundColor(.white)
                                .padding())
                    .foregroundColor(.green)
                
                Spacer(minLength: 25)
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/2, alignment: .center)
                    .textCase(.uppercase)
                    .opacity(0.8)
                    .overlay(Image("correct")
                                .resizable()
                                .offset(x: -10)
                                .aspectRatio(contentMode: .fit)
                                .padding())
                    .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                    .offset(y: -10)
                Spacer(minLength: 50)
                HStack {
                    
                    Spacer()
                    NavigationLink(destination: ChoosePlayerView(), isActive: $isPlayerSelected, label: {
                        Image(correctModel.addPlayerImageMode())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                    })
                    Spacer()
                    
                    NavigationLink(destination: ScoreView(), isActive: $isScoreSelected, label: {
                        Image(correctModel.scoreImageMode())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                    })
                    Spacer()
                    
                }.offset(y: -30)
                
                NavigationLink(destination: PlayerReadyView(), isActive: $isPressStartSelected, label: {
                    Image("pressStart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: .center)
                        .padding(30)
                }).offset(x:5, y: -30)
                
                
            }
        }.edgesIgnoringSafeArea(.all).navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView()
    }
}

