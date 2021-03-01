//
//  ChoosePlayerView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ChoosePlayerView: View {
    
    @State private var batmanState = false
    @State private var supermanState = false
    @State private var spidermanState = false
    @State private var adventuressState = false
    @State private var meredithGreyState = false
    @State private var wolverineState = false
    @State private var deadpoolState = false
    @State private var santaClausState = false
    @State private var indianaJonesState = false
    @State private var devilState = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()

                    Text("ELIGE JUGADOR")
                        .font(Font.custom("PixelEmulator", size: 30))
                        .foregroundColor(.white)
                                    
                    VStack {
                        HStack{
                            Button(action: {}) {
                                Image("Batman")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Superman")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Spider-Man")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }.padding()
                        
                        HStack{
                            Spacer()

                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Adventuress")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Meredith Grey")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            Spacer()
                            
                        }.padding()
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Wolverine")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Deadpool")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Santa Claus")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }

                        }.padding()
                        
                        HStack {
                            Spacer()

                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Indiana Jones")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image("Diablo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
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
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ChoosePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePlayerView()
    }
}
