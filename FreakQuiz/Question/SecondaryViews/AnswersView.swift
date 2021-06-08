//
//  AnswersView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 31/5/21.
//

import SwiftUI

struct AnswersView: View {
    
    var viewModel = QuestionModel()
    
    private func updatingPlayerScore(playerSelected: String) {
        for player in Game.shared.scoreAndPlayers {
            if player.user.rawValue == playerSelected {
                player.updateScore(1)
            }
        }
    }
    
    var body: some View {
        VStack {
            ScrollView{
                
                if Game.shared.correctAnswer == 0 {
                    NavigationLink(destination: CorrectView().onAppear {
                        updatingPlayerScore(playerSelected: Game.shared.selectedPlayer ?? "No player")
                    }) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[0] ?? "0")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                    
                    
                } else {
                    NavigationLink(destination: TestView()) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[0] ?? "0")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                }
                
                if Game.shared.correctAnswer == 1 {
                    NavigationLink(destination: CorrectView().onAppear {
                        updatingPlayerScore(playerSelected: Game.shared.selectedPlayer ?? "No player")
                    }) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[1] ?? "1")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                    
                } else {
                    NavigationLink(destination: TestView()) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[1] ?? "1")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                }
                
                
                if Game.shared.correctAnswer == 2 {
                    NavigationLink(destination: CorrectView().onAppear {
                        updatingPlayerScore(playerSelected: Game.shared.selectedPlayer ?? "No player")
                    }) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[2] ?? "2")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                } else {
                    NavigationLink(destination: TestView()) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[2] ?? "2")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                }
                
                if Game.shared.correctAnswer == 3 {
                    NavigationLink(destination: CorrectView().onAppear {
                        updatingPlayerScore(playerSelected: Game.shared.selectedPlayer ?? "No player")
                    }) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[3] ?? "3")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                    
                } else {
                    NavigationLink(destination: TestView()) {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/11, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(Text(viewModel.getAnswersForQuestion()[3] ?? "3")
                                        .font(Font.custom("PixelEmulator", size: 18))
                                        .foregroundColor(.black))
                            .multilineTextAlignment(.center)
                    }
                    
                }
                
                NavigationLink(destination: EmptyView()) {
                    EmptyView()
                }
                
            }
        }
        .offset(y: 60)
    }
}

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView()
    }
}
