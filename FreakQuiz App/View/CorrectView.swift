//
//  CorrectView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct CorrectView: View {
        
    @State private var isScoreSelected: Bool = false
    @State private var isPlayerSelected: Bool = false
    @State private var isModeSelected: Bool = false
    
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack{
            sharedViews.backgroundImage()
                .aspectRatio(contentMode: .fill)

            
            VStack{
                
                Spacer(minLength: 60)
                
                sharedViews.titleWithBackground(text: "correcto", color: .green)

                Spacer(minLength: 25)
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: width - 50,
                           height: height / 2,
                           alignment: .center)
                    .opacity(0.95)
                    .overlay(
                        sharedViews.imageResizableFit(idText: "correct")
                            .offset(x: -10)
                            .padding())
                    .foregroundColor(.clear)
                    .offset(y: -15)
                
                Spacer(minLength: 70)
                
                GameButtonsView()
                
                sharedViews.pressStartView(destination: PlayerReadyView())
                
                Spacer()
                
                
            }
        }.edgesIgnoringSafeArea(.all).navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView()
    }
}

