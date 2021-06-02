//
//  ScoreView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ScoreView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    let scoreModel = ScoreModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer(minLength: 50)
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/10, alignment: .center)
                        .textCase(.uppercase)
                        .opacity(1)
                        .overlay(Text("Puntuaciones")
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.white)
                                    .padding())
                        .foregroundColor(.black)
                    Spacer(minLength: 50)
                    
                    List(0..<scoreModel.getFinalPlayers().count) { player in
                        
                        Group {
                            HStack {
                                Image(scoreModel.getFinalPlayers()[player].user.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                Text("\(scoreModel.getFinalPlayers()[player].score)")
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/30))
                                    .foregroundColor(.black)
                                    .padding()
                                    .multilineTextAlignment(.center)
                            }.listRowBackground(Color.clear)
                        }
                    }
                    
                    Spacer(minLength: 70)

                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .offset(x: 5,y: -30)
                            .padding()
                        
                    }
                    
                    NavigationLink(destination: EmptyView()) {
                        EmptyView()
                    }

                }.padding()
                
                
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
