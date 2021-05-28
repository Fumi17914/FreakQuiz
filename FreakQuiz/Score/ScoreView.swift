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
                    
                    Spacer()

                    Text("SCORE")
                        .font(Font.custom("PixelEmulator", size: 35))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("lakitu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(55)
                    
                    Spacer()

                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        
                    }

                }.padding()
                
                
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
