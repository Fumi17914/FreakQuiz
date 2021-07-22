//
//  ChooseModeView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct ChooseModeView: View {
    
    let viewModel = ChooseModeVM()
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                Spacer(minLength: 50)
                
                Text("Elije modo")
                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                    .foregroundColor(.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.easyMode() },
                        label: {
                            Image("easyMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                        })
                    
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.hardMode() },
                        label: {
                            Image("difficultMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.fastMode() },
                        label: {
                            Image("sonicMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                }
                .scaledToFill()
                .offset(y: -15)
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

