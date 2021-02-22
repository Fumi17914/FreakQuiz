//
//  ChooseModeView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ChooseModeView: View {
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Text("ELIGE MODO")
                    .font(Font.custom("PixelEmulator", size: 30))
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {Game.shared.mode = .easy}) {
                    Image("easyMode")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                Button(action: {Game.shared.mode = .hard}) {
                    Image("difficultMode")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                 
                Spacer()
                
                Image("textLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(40)
            }
        }
    }
}

struct ChooseModeView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseModeView()
    }
}
