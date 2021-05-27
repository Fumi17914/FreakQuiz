//
//  ChooseModeView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ChooseModeView: View {
    
    let viewModel = ChooseMode()
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        Spacer(minLength: 50)

                        Text("Choose mode")
                            .font(Font.custom("PixelEmulator", size: 30))
                            .foregroundColor(.white)
                        
                        Spacer(minLength: 25)
                        
                        NavigationLink(destination: ChoosePlayerView().onAppear {
                            self.viewModel.easyMode()
                        }){
                            Image("easyMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        Spacer()

                        NavigationLink(destination: ChoosePlayerView().onAppear {
                            self.viewModel.hardMode()
                        }){
                            Image("difficultMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                        }
                        
                        NavigationLink(destination: ChoosePlayerView().onAppear {
                            self.viewModel.fastMode()
                        }){
                            Image("sonicMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                        }
                        
                        Image("textLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(40)
                    }
                }
                .scaledToFill()
            }
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
