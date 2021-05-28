//
//  QuestionView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct QuestionView: View {
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height/3, alignment: .center)
                        .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                        .opacity(0.7)
                        .textCase(.uppercase)
                        .overlay(  Text(Game.shared.randomQuestion ?? "¿cómo se llama el fenómeno que revive los muertos y les da más fuerza a los enemigos en the legend of zelda breath of the wild?")
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                    .foregroundColor(.white)
                                    .padding()
                                    .multilineTextAlignment(.center))
                        .offset(y: 70)
                                      
                    Spacer(minLength: 250)
                    
                    
                }
                
                CardContent()
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
