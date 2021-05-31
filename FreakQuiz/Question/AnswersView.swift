//
//  AnswersView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 31/5/21.
//

import SwiftUI

struct AnswersView: View {
    
    var viewModel = QuestionModel()

    var body: some View {
        VStack {
            ScrollView{
                NavigationLink(destination: TestView()) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                        .foregroundColor(.white)
                        .overlay(Text(viewModel.getAnswersForQuestion()[0])
                                    .font(Font.custom("PixelEmulator", size: 18))
                                    .foregroundColor(.black))
                        .multilineTextAlignment(.center)
                }
                
                NavigationLink(destination: TestView()) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                        .foregroundColor(.white)
                        .overlay(Text(viewModel.getAnswersForQuestion()[1])
                                    .font(Font.custom("PixelEmulator", size: 18))
                                    .foregroundColor(.black))
                        .multilineTextAlignment(.center)
                }
                
                NavigationLink(destination: TestView()) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                        .foregroundColor(.white)
                        .overlay(Text(viewModel.getAnswersForQuestion()[2])
                                    .font(Font.custom("PixelEmulator", size: 18))
                                    .foregroundColor(.black))
                        .multilineTextAlignment(.center)
                }
                
                NavigationLink(destination: TestView()) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                        .foregroundColor(.white)
                        .overlay(Text(viewModel.getAnswersForQuestion()[3])
                                    .font(Font.custom("PixelEmulator", size: 18))
                                    .foregroundColor(.black))
                        .multilineTextAlignment(.center)
                }
            }
        }.offset(y: 60)
    }
}

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView()
    }
}
