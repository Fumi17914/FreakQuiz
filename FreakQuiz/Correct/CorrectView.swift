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
                           
                        Spacer()
                        Spacer()
                        
                        Text("CORRECT")
                            .font(Font.custom("PixelEmulator", size: 35))
                            .foregroundColor(.yellow)
                            .padding(40)
                            
                        Spacer()
                        
                        NavigationLink(destination: ScoreView()) {
                            Image("star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
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
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea([.top, .bottom])

        }
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView()
    }
}
