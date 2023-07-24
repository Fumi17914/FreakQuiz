//
//  ScoreView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct ScoreView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    @StateObject var viewModel = ScoreVM()
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack {
            sharedViews.backgroundImage()
                .aspectRatio(contentMode: .fill)
            
            VStack {
                Spacer(minLength: 40)
                
                sharedViews.titleView(width: width - 50,
                                      height: height / 10,
                                      text: "Puntuaciones",
                                      textSize: height / 33)
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<viewModel.getFinalPlayers.count) { player in
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: width - 50, height: height / 10, alignment: .center)
                            .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                            .overlay(
                                HStack {
                                    sharedViews.imageResizableFit(idText: viewModel.getFinalPlayers[player].user.rawValue)
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("\(viewModel.getFinalPlayers[player].score)")
                                        .font(Font.custom("PixelEmulator", size: height / 30))
                                        .foregroundColor(.white)
                                        .padding()
                                        .multilineTextAlignment(.center)
                                })
                            .addBorder(Color.black, width: 2, cornerRadius: 30)

                    }
                }
                
                sharedViews.pressStartView(destination: PlayerReadyView())

                Spacer(minLength: 40)
            }.padding()
        }
        .edgesIgnoringSafeArea(.all).navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}

