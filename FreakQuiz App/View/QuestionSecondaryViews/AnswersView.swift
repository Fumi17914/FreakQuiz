//
//  AnswersView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct AnswersView: View {
    
    var viewModel = QuestionVM()
    
    @ViewBuilder
    private func destinationView(_ answer: Int) -> some View {
        if Game.shared.correctAnswer == answer {
            CorrectView().onAppear {
                viewModel.updatingPlayerScore(playerSelected: Game.shared.selectedPlayer ?? "No player")
            }
        } else {
            TestView()
        }
    }
    var body: some View {
        VStack {
            ForEach (0..<viewModel.getAnswersForQuestion().count, id: \.self) { answer in
                NavigationLink(
                    destination:
                        destinationView(answer),
                    label: {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: width - 20, height: height / 11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[answer] ?? "0")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                            .addBorder(Color.black, width: 2, cornerRadius: 30)

                    })
            }
        }
        .offset(y: 60)
    }
}

