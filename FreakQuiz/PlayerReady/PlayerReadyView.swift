//
//  PlayerReadyView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct PlayerReadyView: View {
    var body: some View {
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
                
                Button(action: {}) {
                    Image("continueEasy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
            }
        }
    }
}

struct PlayerReadyView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerReadyView()
    }
}
