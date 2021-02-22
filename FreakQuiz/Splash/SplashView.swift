//
//  SplashView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI
import CoreData

struct SplashView: View {
   
    @State private var isPressed = false
    
    var body: some View {
            ZStack{
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Button(action: {isPressed = true}, label: {
                        Image("play")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(60)
                            .scaleEffect(isPressed ? 1.3 : 1.0)
                    })
                    
                    Spacer()
                    Image("textLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(40)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
