//
//  PlayerReadyView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct PlayerReadyView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                    Text("ARE YOU READY?")
                        .font(Font.custom("PixelEmulator", size: 30))
                        .foregroundColor(.white)
                    
                    Spacer()
                                    
                    Image("Batman")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(50)
                    
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 235, height: 80, alignment: .center)
                        .foregroundColor(.yellow)
                        .opacity(0.8)
                        .textCase(.uppercase)
                        .overlay(Text("BATMAN")
                                    .font(Font.custom("PixelEmulator", size: 33))
                                    .foregroundColor(.white))
                        .offset(y: -45)
                    
                    Spacer()
                    
                    NavigationLink(destination: QuestionView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .offset(x:5)
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
