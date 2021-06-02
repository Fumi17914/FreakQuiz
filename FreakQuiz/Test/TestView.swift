//
// TestView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct TestView: View {
    
    let viewModel = QuestionsAndTestSample()
    
    let testModel =  TestModel()
    
    var body: some View {
        NavigationView {
            ZStack{
                Image ("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Spacer(minLength: 50)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                        .textCase(.uppercase)
                        .opacity(0.8)
                        .overlay(Text("FALLASTE")
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.white)
                                    .padding())
                        .foregroundColor(.red)
                    
                    Spacer(minLength: 25)

                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/2, alignment: .center)
                        .textCase(.uppercase)
                        .opacity(0.75)
                        .overlay(Text(viewModel.test.randomElement() ?? "no test")
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/30))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding())
                        .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                        .offset(y: -10)
                    
                    Spacer(minLength: 50)

                    HStack {
                        
                        Spacer()
                        NavigationLink(destination: ChoosePlayerView()) {
                            Image(testModel.addPlayerImageMode())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100, alignment: .center)
                        }
                        Spacer()

                        NavigationLink(destination: ScoreView()) {
                            Image(testModel.scoreImageMode())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100, alignment: .center)
                        }
                        Spacer()
                    }.offset(y: -25)
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: .center)
                            .padding(30)
                    }.offset(x:5, y: -30)
                    
                    Spacer(minLength: 80)

                    NavigationLink(destination: EmptyView()) {
                        EmptyView()
                    }
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
