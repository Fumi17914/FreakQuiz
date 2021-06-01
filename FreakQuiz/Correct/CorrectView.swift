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
                    Spacer(minLength: 60)
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                        .textCase(.uppercase)
                        .opacity(0.8)
                        .overlay(Text("correcto")
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.white)
                                    .padding())
                        .foregroundColor(.green)
                    
                    Spacer(minLength: 130)
                    
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
                        .offset(y: -45)
                      
                                
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }.offset(x:5, y: 35)
                    
                    Spacer(minLength: 130)
                    
                    NavigationLink(destination: EmptyView()) {
                        EmptyView()
                    }
                    
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
