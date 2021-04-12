//
//  QuestionView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 235, height: 80, alignment: .center)
                        .foregroundColor(.yellow)
                        .opacity(0.8)
                        .textCase(.uppercase)
                        .overlay(Text("BATMAN")
                                    .font(Font.custom("PixelEmulator", size: 33))
                                    .foregroundColor(.white))

                                        
                    Text("¿cómo se llama el fenómeno que revive los muertos y les da más fuerza en the legend of zelda breath of the wild? ")
                        .font(Font.custom("PixelEmulator", size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .multilineTextAlignment(.center)

                    
                    Spacer()
                    
                    VStack {
                    }
                    

                }
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
