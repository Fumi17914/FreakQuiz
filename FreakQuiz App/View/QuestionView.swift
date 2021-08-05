//
//  QuestionView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct QuestionView: View {
    
    var startTimer = ProgressBarView()
    var viewModel = QuestionVM()
        
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height/3, alignment: .center)
                        .foregroundColor(.white)
                        .textCase(.uppercase)
                        .overlay(Text(viewModel.getFinalQuestion())
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                    .foregroundColor(.black)
                                    .padding()
                                    .multilineTextAlignment(.center))
                        .addBorder(Color.black, width: 2, cornerRadius: 30)
                        .offset(y: 70)
                    ProgressBarView().onAppear {
                        self.startTimer.startLoading()
                        
                    }.offset(y: 80)
                }
                Spacer()
            }
            if Game.shared.mode == .thanos {
                PurpleCardView()
            } else {
                CardContent()
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct QuestionView_Previews: PreviewProvider {
    
    static var previews: some View {
        QuestionView()
    }
}

