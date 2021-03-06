//
//  QuestionView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct QuestionView: View {
    
    var startTimer = ProgressBarView()
    var viewModel = QuestionModel()
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height/3, alignment: .center)
                            .foregroundColor(.white)
                            .opacity(1)
                            .textCase(.uppercase)
                            .overlay(Text(viewModel.getFinalQuestion())
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                        .foregroundColor(.black)
                                        .padding()
                                        .multilineTextAlignment(.center))
                            .offset(y: 70)
                        ProgressBarView().onAppear {
                            self.startTimer.startLoading()
                        }.offset(y: 80)
                    }
                    Spacer()
                }

                CardContent()
                
                NavigationLink(destination: EmptyView()) {
                    EmptyView()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
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
