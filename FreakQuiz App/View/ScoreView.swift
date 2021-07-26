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
    
    let viewModel = ScoreVM()
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer(minLength: 50)
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                    .textCase(.uppercase)
                    .overlay(Text("Puntuaciones")
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                .foregroundColor(.black)
                                .padding())
                    .foregroundColor(.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<viewModel.getFinalPlayers().count) { player in
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                            .textCase(.uppercase)
                            .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                            .overlay(
                                HStack {
                                    Image(viewModel.getFinalPlayers()[player].user.rawValue)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("\(viewModel.getFinalPlayers()[player].score)")
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/30))
                                        .foregroundColor(.white)
                                        .padding()
                                        .multilineTextAlignment(.center)
                                })
                    }
                }
                
                Spacer(minLength: 20)
                
                
                NavigationLink(destination: PlayerReadyView()) {
                    Image("pressStart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: .center)
                        .padding()
                        .offset(x: 7,y: -30)
                    
                }
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

