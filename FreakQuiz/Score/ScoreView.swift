//
//  ScoreView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ScoreView: View {
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
                        Spacer()
                        Spacer()
                        
                        Text("SCORE")
                            .font(Font.custom("PixelEmulator", size: 35))
                            .foregroundColor(.white)
                        
                        Spacer()

                        Image("lakitu")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 50, idealWidth: 70, maxWidth: 100, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .topLeading)
                            .offset(y: 100)
                    }.padding()
                 
                    Spacer()

                    NavigationLink(destination: PlayerReadyView()) {
                        Image("continueEasy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
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

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
