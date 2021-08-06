//
//  ChooseModeView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct ChooseModeView: View {
    
    let viewModel = ChooseModeVM()
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width - 35, height: UIScreen.main.bounds.height/10, alignment: .center)
                    .textCase(.uppercase)
                    .overlay(Text("Elije modo")
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                .foregroundColor(.black)
                                .padding())
                    .foregroundColor(.white)
                    .addBorder(Color.black, width: 2, cornerRadius: 30)
                
                Spacer(minLength: 50)
                
                ScrollView(.vertical, showsIndicators: false) {
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.easyMode() },
                        label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundColor(.yellow)
                                .frame(width: UIScreen.main.bounds.width - 35, height: 200)
                                .opacity(0.95)
                                .overlay(
                                    HStack {
                                        Image("easyMode")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(25)
                                        Text("EASY MODE")
                                            .multilineTextAlignment(.center)
                                            .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                            .foregroundColor(.white)
                                        
                                    }.offset(x: -12)
                                )
                                .addBorder(Color.black, width: 2, cornerRadius: 25)

                            
                        })
                    
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.hardMode() },
                        label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundColor(.red)
                                .frame(width: UIScreen.main.bounds.width - 35, height: 200)
                                .overlay(
                                    HStack {
                                        Image("difficultMode")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(25)
                                        Text("DIFFICULT MODE")
                                            .multilineTextAlignment(.center)
                                            .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                            .foregroundColor(.white)
                                    }.offset(x: -12)
                                )
                                .addBorder(Color.black, width: 2, cornerRadius: 25)

                        })
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.fastMode() },
                        label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundColor(.blue)
                                .frame(width: UIScreen.main.bounds.width - 35, height: 200)
                                .overlay(
                                    HStack {
                                        Image("fastMode")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(25)
                                        Text("FAST MODE")
                                            .multilineTextAlignment(.center)
                                            .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                            .foregroundColor(.white)
                                    }.offset(x: -12)
                                )
                                .addBorder(Color.black, width: 2, cornerRadius: 25)

                        })
                    
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.thanosMode() },
                        label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundColor(.purple)
                                .frame(width: UIScreen.main.bounds.width - 35, height: 200)
                                .overlay(
                                    HStack {
                                        Image("hardcoreMode")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(25)
                                        Text("HARDCORE MODE")
                                            .multilineTextAlignment(.center)
                                            .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                            .foregroundColor(.white)
                                    }.offset(x: -12)
                                )
                                .addBorder(Color.black, width: 2, cornerRadius: 25)

                        })
                    
                    Spacer(minLength: 50)
                    
                    NavigationLink(
                        destination: ChoosePlayerView().onAppear { self.viewModel.freakMode() },
                        label: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundColor(.orange)
                                .frame(width: UIScreen.main.bounds.width - 35, height: 200)
                                .overlay(
                                    HStack {
                                        Image("sword")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(25)
                                        Text("MASTER FREAKVERSE")
                                            .multilineTextAlignment(.center)
                                            .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                            .foregroundColor(.white)
                                    }.offset(x: -12)
                                )
                                .addBorder(Color.black, width: 2, cornerRadius: 25)

                        }).disabled(true).opacity(0.2)
                }
                .offset(y: -15)
            }
            
        }.edgesIgnoringSafeArea(.bottom)
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

