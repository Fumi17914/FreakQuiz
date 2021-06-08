//
//  SplashView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(25)
                    
                    NavigationLink(destination: ChooseModeView()){
                        Image("play")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    
                    Image("textLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(40)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
