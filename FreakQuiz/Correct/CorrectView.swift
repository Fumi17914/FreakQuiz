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
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack{
                        
                        Text("CORRECT")
                            .font(Font.custom("PixelEmulator", size: 35))
                            .foregroundColor(.yellow)
                            .padding(40)
                            
                        
                
                        
                    }.padding()
                    
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
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("nextQuestionEasy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    
                    Spacer()
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

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView()
    }
}
