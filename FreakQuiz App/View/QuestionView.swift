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
    
    let sharedViews = SharedViews()
        
    var body: some View {
        ZStack {
            sharedViews.backgroundImage()
            
            VStack {
                VStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: width - 40,
                               height: height / 3,
                               alignment: .center)
                        .foregroundColor(.white)
                        .overlay(Text(viewModel.getFinalQuestion())
                                    .font(Font.custom("PixelEmulator", size: height / 40))
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
            CardContent()
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .onDisappear {
            viewModel.updateIndexQuestion()
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    
    static var previews: some View {
        QuestionView()
    }
}

