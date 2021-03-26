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
                    
                    Text("TE TOCA")
                        .font(Font.custom("PixelEmulator", size: 30))
                        .foregroundColor(.white)
                    
                    Spacer()
                                    
                    Image("Batman")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(65)
                    
                    
                    Text("Batman")
                        .font(Font.custom("PixelEmulator", size: 35))
                        .foregroundColor(.yellow)
                    
                    Spacer()
                    Spacer()
                    
                    NavigationLink(destination: QuestionView()) {
                        Image("continueEasy")
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

struct PlayerReadyView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerReadyView()
    }
}
