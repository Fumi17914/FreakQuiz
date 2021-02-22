//
//  QuestionView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("BATMAN")
                    .font(Font.custom("PixelEmulator", size: 35))
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("¿cómo se llama el fenómeno que revive los muertos y les da más fuerza en the legend of zelda breath of the wild? ")
                    .font(Font.custom("PixelEmulator", size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.center)

                
                Spacer()
                
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("easyAnswerImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }

                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("easyAnswerImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("easyAnswerImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                           
                    }
                    
                    Button(action: {}) {
                        Image("easyAnswerImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                }
                
                Spacer()
                
                Text("15")
                    .font(Font.custom("PixelEmulator", size: 35))
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
