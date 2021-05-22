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
                
                ScrollView(.vertical) {
                    VStack {
                        Spacer(minLength: 40)

                        Text("Choose mode")
                            .font(Font.custom("PixelEmulator", size: 30))
                            .foregroundColor(.white)
                        
                        Spacer(minLength: 25)
                        
                        NavigationLink(destination: ChoosePlayerView()){
                            Image("easyMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                        }.simultaneousGesture(TapGesture().onEnded{
                            Game.shared.mode = .easy
                        })
                        Spacer()

                        NavigationLink(destination: ChoosePlayerView()){
                            Image("difficultMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                        }.simultaneousGesture(TapGesture().onEnded{
                            Game.shared.mode = .hard
                        })
                        
                        NavigationLink(destination: ChoosePlayerView()){
                            Image("sonicMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                        }.simultaneousGesture(TapGesture().onEnded{
                            Game.shared.mode = .hard
                        })
                        
                        Image("textLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(40)
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

struct ChooseModeView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseModeView()
    }
}
