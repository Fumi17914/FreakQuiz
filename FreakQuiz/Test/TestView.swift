//
//  TestView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image ("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
            
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 235, height: 80, alignment: .center)
                        .foregroundColor(.purple)
                        .opacity(0.8)
                        .textCase(.uppercase)
                        .overlay(Text("MAAAAL")
                                    .font(Font.custom("PixelEmulator", size: 33))
                                    .foregroundColor(.white)
                                    .offset(x: 5))
                        .offset(y: 45)
                    
                    Spacer(minLength: 150)
                    
                    Image("marioWin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width - 100, alignment: .center)
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(25)
                            .offset(x: 5, y: 35)
                    }

                    
                    HStack{
                        NavigationLink(destination: ChoosePlayerView()) {
                            Image("addYellow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(55)
                        }
                        
                        NavigationLink(destination: ScoreView()) {
                            Image("scoreYellow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(55)
                        }
                    }.offset(y: 35)
                    
                    Spacer(minLength: 30)
                }
            }
            .edgesIgnoringSafeArea(.all)

        }
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
