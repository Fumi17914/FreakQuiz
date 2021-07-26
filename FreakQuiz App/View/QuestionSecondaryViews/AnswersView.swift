//
//  AnswersView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct AnswersView: View {
    
    var viewModel = QuestionVM()
    
    @State private var isSelected: Bool = false
    
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
            ScrollView(.vertical, showsIndicators: false){
                ForEach (0..<viewModel.getAnswersForQuestion().count) { answer in
                    NavigationLink(
                        destination:
                            destinationView(answer),
                        label: {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                                .foregroundColor(.white)
                                .overlay(Text(viewModel.getAnswersForQuestion()[answer] ?? "0")
                                            .font(Font.custom("PixelEmulator", size: 18))
                                            .foregroundColor(.black))
                                .multilineTextAlignment(.center)
                        })
                }
            }
        }
        .offset(y: 60)
    }
}

