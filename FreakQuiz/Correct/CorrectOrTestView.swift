//
// CorrectOrTestView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct CorrectOrTestView: View {
    
    let viewModel = CorrectOrTest()
    
    var body: some View {
        NavigationView {
            ZStack{
                Image ("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{                                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/3, alignment: .center)
                        .textCase(.uppercase)
                        .opacity(0.8)
                        .overlay(Text(Game.shared.test)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/30))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding())
                        .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                        .offset(y: -55)
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: ScoreView()) {
                        Image(viewModel.scoreImageMode())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                            .opacity(0.9)
                            .shadow(color: Game.shared.modeSelectedBackgroundColor(), radius: 4)
                    }.offset(y: 25)
                    

                    Spacer()
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(25)
                    }.offset(x:5, y: 70)
                    
                    Spacer()
                    
                }
            }.edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct CorrectOrTestView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectOrTestView()
    }
}
