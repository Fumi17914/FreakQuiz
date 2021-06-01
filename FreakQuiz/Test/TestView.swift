//
// TestView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct TestView: View {
    
    let viewModel = QuestionsAndTestSample()
    
    var body: some View {
        NavigationView {
            ZStack{
                Image ("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{                                    
                    Spacer(minLength: 125)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/1.5, alignment: .center)
                        .textCase(.uppercase)
                        .opacity(0.75)
                        .overlay(Text(viewModel.test.randomElement() ?? "no test")
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/30))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding())
                        .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                        .offset(y: -55)
                    
                    Spacer(minLength: 0)
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(25)
                    }.offset(x:5, y: 10)
                    
                    NavigationLink(destination: EmptyView()) {
                        EmptyView()
                    }
                    
                    Spacer(minLength: 10)
                    
                }
            }.edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
