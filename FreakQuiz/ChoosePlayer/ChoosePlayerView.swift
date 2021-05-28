//
//  ChoosePlayerView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ChoosePlayerView: View {
    
    @State private var batmanState = false
    @State private var batmanOpacity: Double = 1
    
    @State private var supermanState = false
    @State private var supermanOpacity: Double = 1

    @State private var spidermanState = false
    @State private var spidermanOpacity: Double = 1

    @State private var adventuressState = false
    @State private var adventuressOpacity: Double = 1

    @State private var meredithGreyState = false
    @State private var meredithOpacity: Double = 1

    @State private var wolverineState = false
    @State private var wolverineOpacity: Double = 1

    @State private var deadpoolState = false
    @State private var deadpoolOpacity: Double = 1

    @State private var santaClausState = false
    @State private var santaclausOpacity: Double = 1

    @State private var indianaJonesState = false
    @State private var indianaJonesOpacity: Double = 1

    @State private var devilState = false
    @State private var devilOpacity: Double = 1
    
    private func deletePlayer(playerToDelete: String) {
        for (position, player) in Game.shared.players.enumerated() {
            if player == playerToDelete {
                Game.shared.players.remove(at: position)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()

                    Text("CHOOSE PLAYERS")
                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/30))
                        .foregroundColor(.white)
                        .padding(40)
                                    
                    VStack{
                        HStack{
                            
                            Button(action: {
                                if !batmanState {
                                    batmanState = true
                                    Game.shared.players.append(Player.Characters.Batman.rawValue)
                                    batmanOpacity = 0.3
                                } else {
                                    batmanState = false
                                    deletePlayer(playerToDelete: Player.Characters.Batman.rawValue)
                                    batmanOpacity = 1.0
                                }
                                
                                }) {
                                Image(Player.Characters.Batman.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(batmanOpacity)
                            }
                            Spacer()
                            
                            Button(action: {
                                
                                if !supermanState {
                                    supermanState = true
                                    Game.shared.players.append(Player.Characters.Superman.rawValue)
                                    supermanOpacity = 0.3
                                } else {
                                    supermanState = false
                                    deletePlayer(playerToDelete: Player.Characters.Superman.rawValue)
                                    supermanOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Superman.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(supermanOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !spidermanState {
                                    spidermanState = true
                                    Game.shared.players.append(Player.Characters.Spiderman.rawValue)
                                    spidermanOpacity = 0.3
                                } else {
                                    spidermanState = false
                                    deletePlayer(playerToDelete: Player.Characters.Spiderman.rawValue)
                                    spidermanOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Spiderman.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(spidermanOpacity)
                            }
                        }.padding()
                        
                        HStack{
                            Spacer()

                            Button(action: {
                                
                                if !adventuressState {
                                    adventuressState = true
                                    Game.shared.players.append(Player.Characters.Girl.rawValue)
                                    adventuressOpacity = 0.3
                                } else {
                                    adventuressState = false
                                    deletePlayer(playerToDelete: Player.Characters.Girl.rawValue)
                                    adventuressOpacity = 1.0
                                }

                            }) {
                                Image(Player.Characters.Girl.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(adventuressOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !meredithGreyState {
                                    meredithGreyState = true
                                    Game.shared.players.append(Player.Characters.Doctor.rawValue)
                                    meredithOpacity = 0.3
                                } else {
                                    meredithGreyState = false
                                    deletePlayer(playerToDelete: Player.Characters.Doctor.rawValue)
                                    meredithOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Doctor.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(meredithOpacity)
                            }
                            
                            Spacer()
                            
                        }.padding()
                        
                        HStack{
                            Button(action: {
                                
                                if !wolverineState {
                                    wolverineState = true
                                    Game.shared.players.append(Player.Characters.Lobezno.rawValue)
                                    wolverineOpacity = 0.3
                                } else {
                                    wolverineState = false
                                    deletePlayer(playerToDelete: Player.Characters.Lobezno.rawValue)
                                    wolverineOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Lobezno.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wolverineOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !deadpoolState {
                                    deadpoolState = true
                                    Game.shared.players.append(Player.Characters.Deadpool.rawValue)
                                    deadpoolOpacity = 0.3
                                } else {
                                    deadpoolState = false
                                    deletePlayer(playerToDelete: Player.Characters.Deadpool.rawValue)
                                    deadpoolOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Deadpool.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(deadpoolOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !santaClausState {
                                    santaClausState = true
                                    Game.shared.players.append(Player.Characters.Noel.rawValue)
                                    santaclausOpacity = 0.3
                                } else {
                                    santaClausState = false
                                    deletePlayer(playerToDelete: Player.Characters.Noel.rawValue)
                                    santaclausOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Noel.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(santaclausOpacity)
                            }

                        }.padding()
                        
                        HStack {
                            Spacer()

                            Button(action: {
                                
                                if !indianaJonesState {
                                    indianaJonesState = true
                                    Game.shared.players.append(Player.Characters.Indy.rawValue)
                                    indianaJonesOpacity = 0.3
                                } else {
                                    indianaJonesState = false
                                    deletePlayer(playerToDelete: Player.Characters.Indy.rawValue)
                                    indianaJonesOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Indy.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(indianaJonesOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !devilState {
                                    devilState = true
                                    Game.shared.players.append(Player.Characters.Devil.rawValue)
                                    devilOpacity = 0.3
                                } else {
                                    devilState = false
                                    deletePlayer(playerToDelete: Player.Characters.Devil.rawValue)
                                    devilOpacity = 1.0
                                }
                                
                            }) {
                                Image(Player.Characters.Devil.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(devilOpacity)
                            }
                            
                            Spacer()

                        }.padding()
                        
                        Spacer(minLength: 25)
                        
                        NavigationLink(destination: PlayerReadyView()) {
                                Image("redButton")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(25)
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct ChoosePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePlayerView()
    }
}
