//
//  ChooseModeView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct ChooseModeView: View {
    
    let viewModel = ChooseModeVM()
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack{
            sharedViews.backgroundImage()
            
            VStack() {
                
                sharedViews.titleView(width: width - 35,
                                      height: height / 10,
                                      text: "Elije modo",
                                      textSize: height / 33)
                
                Spacer(minLength: 50)
                
                ScrollView(.vertical, showsIndicators: false) {
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.easyMode() },
                        label: {
                            
                            sharedViews.chooseModeButtonNavigation(cornerRadius: 25.0,
                                                       width: width - 35,
                                                       height: 200,
                                                       image: sharedViews.imageResizableFit(idText: "easyMode"),
                                                       text: "MODO  FÁCIL",
                                                       textSizeProportion: height / 38,
                                                       foregroundColor: .yellow)
                            .opacity(0.95)
                        })
                    
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.hardMode() },
                        label: {
                            
                            sharedViews.chooseModeButtonNavigation(cornerRadius: 25.0,
                                                       width: width - 35,
                                                       height: 200,
                                                       image: sharedViews.imageResizableFit(idText: "difficultMode"),
                                                       text: "MODO DIFÍCIL",
                                                       textSizeProportion: height / 38,
                                                       foregroundColor: .red)
                        })
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.fastMode() },
                        label: {
                            
                            sharedViews.chooseModeButtonNavigation(cornerRadius: 25.0,
                                                       width: width - 35,
                                                       height: 200,
                                                       image: sharedViews.imageResizableFit(idText: "fastMode"),
                                                       text: "MODO RÁPIDO",
                                                       textSizeProportion: height / 38,
                                                       foregroundColor: .blue)
                        })
                    
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.thanosMode() },
                        label: {
                            
                            sharedViews.chooseModeButtonNavigation(cornerRadius: 25.0,
                                                       width: width - 35,
                                                       height: 200,
                                                       image: sharedViews.imageResizableFit(idText: "hardcoreMode"),
                                                       text: "MODO HARDCORE",
                                                       textSizeProportion: height / 38,
                                                       foregroundColor: .purple)
                        })
                    
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.freakMode() },
                        label: {
                            
                            sharedViews.chooseModeButtonNavigation(cornerRadius: 25.0,
                                                       width: width - 35,
                                                       height: 200,
                                                       image: sharedViews.imageResizableFit(idText: "sword"),
                                                       text: "MASTER FREAKVERSE",
                                                       textSizeProportion: height / 38,
                                                       foregroundColor: .orange)
                        }).disabled(true).opacity(0.2)
                }
                .offset(y: -15)
            }
            
        }
        .onDisappear(perform: viewModel.loadQuestions)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct ChooseModeView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseModeView()
    }
}

