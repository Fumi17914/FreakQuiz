//
//  SplashView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI
import CoreData

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
                        
                    
                    Spacer()
                    
                    NavigationLink(destination: ChooseModeView()) {
                            Image("play")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
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
            .edgesIgnoringSafeArea([.top, .bottom])

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
