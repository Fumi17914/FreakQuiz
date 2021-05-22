//
//  TestView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 235, height: 80, alignment: .center)
                        .foregroundColor(.yellow)
                        .opacity(0.8)
                        .overlay(Text("maaaal")
                                    .offset(x:5)
                                    .font(Font.custom("PixelEmulator", size: 33))
                                    .foregroundColor(.white))
    
                        .multilineTextAlignment(.center)
                        .offset(y:50)
                    
                    Spacer(minLength: 30)
                    
                    Text("quédate en ropa interior y haz 10 flexiones")
                        .font(Font.custom("PixelEmulator", size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()


                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }.offset(x: 5)
                    
                    HStack{
                        NavigationLink(destination: ChoosePlayerView()) {
                            Image("addYellow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(55)
                        }
                        
                        NavigationLink(destination: ScoreView()) {
                            Image("scoreYellow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(55)
                        }
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

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
