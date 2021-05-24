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

    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()

                    Text("CHOOSE PLAYERS")
                        .font(Font.custom("PixelEmulator", size: 27))
                        .foregroundColor(.white)
                        .padding(40)
                                    
                    VStack {
                        HStack{
                            
                            Button(action: {
                                
                                if !batmanState {
                                    batmanState = true
                                    Game.shared.player.append("Batman")
                                    batmanOpacity = 0.3
                                } else {
                                    batmanState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Batman"}
                                    batmanOpacity = 1.0
                                }
                                
                                }) {
                                Image("Batman")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(batmanOpacity)
                            }
                            Spacer()
                            
                            Button(action: {
                                
                                if !supermanState {
                                    supermanState = true
                                    Game.shared.player.append("Superman")
                                    supermanOpacity = 0.3
                                } else {
                                    supermanState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Superman"}
                                    supermanOpacity = 1.0
                                }
                                
                            }) {
                                Image("Superman")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(supermanOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !spidermanState {
                                    spidermanState = true
                                    Game.shared.player.append("Spider-Man")
                                    spidermanOpacity = 0.3
                                } else {
                                    spidermanState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Spider-Man"}
                                    spidermanOpacity = 1.0
                                }
                                
                            }) {
                                Image("Spider-Man")
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
                                    Game.shared.player.append("Adventuress")
                                    adventuressOpacity = 0.3
                                } else {
                                    adventuressState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Adventuress"}
                                    adventuressOpacity = 1.0
                                }

                            }) {
                                Image("Adventuress")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(adventuressOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !meredithGreyState {
                                    meredithGreyState = true
                                    Game.shared.player.append("Meredith Grey")
                                    meredithOpacity = 0.3
                                } else {
                                    meredithGreyState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Meredith Grey"}
                                    meredithOpacity = 1.0
                                }
                                
                            }) {
                                Image("Meredith Grey")
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
                                    Game.shared.player.append("Wolverine")
                                    wolverineOpacity = 0.3
                                } else {
                                    wolverineState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Wolverine"}
                                    wolverineOpacity = 1.0
                                }
                                
                            }) {
                                Image("Wolverine")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wolverineOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !deadpoolState {
                                    deadpoolState = true
                                    Game.shared.player.append("Deadpool")
                                    deadpoolOpacity = 0.3
                                } else {
                                    deadpoolState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Deadpool"}
                                    deadpoolOpacity = 1.0
                                }
                                
                            }) {
                                Image("Deadpool")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(deadpoolOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !santaClausState {
                                    santaClausState = true
                                    Game.shared.player.append("Santa Claus")
                                    santaclausOpacity = 0.3
                                } else {
                                    santaClausState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Santa Claus"}
                                    santaclausOpacity = 1.0
                                }
                                
                            }) {
                                Image("Santa Claus")
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
                                    Game.shared.player.append("Indiana Jones")
                                    indianaJonesOpacity = 0.3
                                } else {
                                    indianaJonesState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Indiana Jones"}
                                    indianaJonesOpacity = 1.0
                                }
                                
                            }) {
                                Image("Indiana Jones")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(indianaJonesOpacity)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                if !devilState {
                                    devilState = true
                                    Game.shared.player.append("Diablo")
                                    devilOpacity = 0.3
                                } else {
                                    devilState = false
                                    Game.shared.player = Game.shared.player.filter {$0 != "Diablo"}
                                    devilOpacity = 1.0
                                }
                                
                            }) {
                                Image("Diablo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(devilOpacity)
                            }
                            
                            Spacer()

                        }.padding()
                        
                        Spacer()
                        
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
