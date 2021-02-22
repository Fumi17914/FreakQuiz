//
//  CorrectView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct CorrectView: View {
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack{
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("CORRECT")
                        .font(Font.custom("PixelEmulator", size: 35))
                        .foregroundColor(.yellow)
                    
                    Spacer()
                    Button(action: {}) {
                        Image("star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 10, idealWidth: 50, maxWidth: 50, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .topLeading)
                        
                    }.padding()
                }
                
                Spacer()
                Spacer()
                
                Text("Answer")
                    .font(Font.custom("PixelEmulator", size: 25))
                    .foregroundColor(.white)
                                
                Image("benderApplause")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(65)
                
                
                Spacer()
                Spacer()
                
                Button(action: {}) {
                    Image("nextQuestionEasy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
            }
        }
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView()
    }
}
