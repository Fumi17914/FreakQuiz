//
//  TestView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct TestView: View {
    
    let myDataModel = QuestionsAndTestSample()
        
    @State private var isScoreSelected: Bool = false
    @State private var isPlayerSelected: Bool = false
    @State private var isModeSelected: Bool = false
    @State private var isPressStartSelected: Bool = false
    
    var body: some View {
        ZStack{
            Image ("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer(minLength: 40)
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                    .textCase(.uppercase)
                    .opacity(0.9)
                    .overlay(Text("FALLASTE")
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                .foregroundColor(.white)
                                .padding())
                    .foregroundColor(.red)
                    .addBorder(Color.black, width: 2, cornerRadius: 30)

                
                Spacer(minLength: 25)
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/2, alignment: .center)
                    .textCase(.uppercase)
                    .opacity(0.9)
                    .overlay(Text(myDataModel.test.randomElement() ?? "no test")
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/30))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding())
                    .foregroundColor(.clear)
                    //.addBorder(Color.black, width: 2, cornerRadius: 30)
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
                        .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: .center)
                        .padding()
                }).offset(x:5)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
    
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
