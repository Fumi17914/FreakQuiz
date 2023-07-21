//
//  CorrectView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct CorrectView: View {
        
    @State private var isScoreSelected: Bool = false
    @State private var isPlayerSelected: Bool = false
    @State private var isModeSelected: Bool = false
    @State private var isPressStartSelected: Bool = false
    
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack{
            sharedViews.backgroundImage()
                .aspectRatio(contentMode: .fill)

            
            VStack{
                
                Spacer(minLength: 40)
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: width - 50,
                           height: height / 10,
                           alignment: .center)
                    .opacity(0.9)
                    .overlay(Text("correcto")
                                .font(Font.custom("PixelEmulator", size: height / 33))
                                .foregroundColor(.white)
                                .padding())
                    .foregroundColor(.green)
                    .addBorder(Color.black, width: 2, cornerRadius: 30)

                
                Spacer(minLength: 25)
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: width - 50,
                           height: height / 2,
                           alignment: .center)
                    .opacity(0.95)
                    .overlay(Image("correct")
                                .resizable()
                                .offset(x: -10)
                                .aspectRatio(contentMode: .fit)
                                .padding())
                    .foregroundColor(.clear)
                    .offset(y: -15)
                
                Spacer(minLength: 70)
                HStack {
                    
                    Spacer()
                    NavigationLink(destination: ChooseModeView(), isActive: $isModeSelected, label: {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 98, height: 80, alignment: .center)
                            .foregroundColor(Game.shared.modeSelectedBackgroundColor()).opacity(0.95)
                            .addBorder(Color.black, width: 2, cornerRadius: 15)
                            .overlay(
                                
                                Image("gamingChair")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70, alignment: .center)
                            )
                    
                    })
                    Spacer()
                    NavigationLink(destination: ChoosePlayerView(), isActive: $isPlayerSelected, label: {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 98, height: 80, alignment: .center)
                            .foregroundColor(Game.shared.modeSelectedBackgroundColor()).opacity(0.95)
                            .addBorder(Color.black, width: 2, cornerRadius: 15)
                            .overlay(
                                
                                Image("gamingController")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70, alignment: .center)
            
                            )

                    })
                    Spacer()
                    
                    NavigationLink(destination: ScoreView(), isActive: $isScoreSelected, label: {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 98, height: 80, alignment: .center)
                            .foregroundColor(Game.shared.modeSelectedBackgroundColor()).opacity(0.95)
                            .addBorder(Color.black, width: 2, cornerRadius: 15)
                            .overlay(
                                
                                Image("gamingTrophy")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70, alignment: .center)
                                
                            )
                    
                    })
                    Spacer()
                    
                    
                    
                }.offset(y: -25)
                
                NavigationLink(destination: PlayerReadyView(), isActive: $isPressStartSelected, label: {
                    Image("pressStart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: width - 50,
                               height: 40,
                               alignment: .center)
                        .padding()
                }).offset(x: 5)
                
                Spacer()
                
                
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

