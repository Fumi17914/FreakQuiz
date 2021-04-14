//
//  CorrectView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct CorrectView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow.edgesIgnoringSafeArea(.all)
                
                VStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 235, height: 80, alignment: .center)
                        .foregroundColor(.black)
                        .overlay(Text("YEAAAH")
                                    .font(Font.custom("PixelEmulator", size: 33))
                                    .foregroundColor(.white))
                        .multilineTextAlignment(.center)
                    Text("Answer")
                        .font(Font.custom("PixelEmulator", size: 25))
                        .foregroundColor(.white)
                                    
                    Image("marioWin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(65)
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("nextQuestionEasy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                }
            }
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
