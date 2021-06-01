//
//  ChooseModeView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ChooseModeView: View {
    
    let viewModel = ChooseModeModel()
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack() {
                        Spacer(minLength: 50)

                        Text("Elije modo")
                            .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                            .foregroundColor(.white)
                        
                        Spacer(minLength: 25)
                        
                        NavigationLink(destination: ChoosePlayerView().onAppear {
                            self.viewModel.easyMode()
                        }){
                            Image("easyMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
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
                        
                        NavigationLink(destination: EmptyView()) {
                            EmptyView()
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
