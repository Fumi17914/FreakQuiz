//
//  ChooseModeView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ChooseModeView: View {
    var body: some View {
        NavigationView{
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
                    
                    NavigationLink(destination: ChoosePlayerView()){
                        Image("easyMode")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }.onTapGesture {
                        Game.shared.mode = .easy
                    }
                    
                    NavigationLink(destination: ChoosePlayerView()){
                        Image("difficultMode")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }.onTapGesture {
                        Game.shared.mode = .hard
                    }
    
                    Spacer()
                    
                    Image("textLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(40)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ChooseModeView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseModeView()
    }
}
