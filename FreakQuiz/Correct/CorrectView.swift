//
//  CorrectView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 31/5/21.
//

import SwiftUI

struct CorrectView: View {
    
    let viewModel = TestModel()
    
    var body: some View {
        NavigationView {
            ZStack{
                Image ("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer(minLength: 125)
                    
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
                        .offset(y: -55)
                    
                    Spacer(minLength: 0)
                    
                    HStack {
                        Text("SCORE")
                            .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            
                        Spacer()
                        NavigationLink(destination: ScoreView()) {
                            Image(viewModel.scoreImageMode())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100, alignment: .bottomTrailing)
                        }
                    }.padding(20)
                    
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(25)
                    }.offset(x:5, y: 15)
                    
                    Spacer()
                    
                }
            }.edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView()
    }
}
