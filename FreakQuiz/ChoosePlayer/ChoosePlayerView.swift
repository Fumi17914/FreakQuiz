//
//  ChoosePlayerView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ChoosePlayerView: View {
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()

                Text("CHOOSE PLAYER").font(Font.custom("PixelEmulator", size: 35))
                    .foregroundColor(.yellow)
                                
                VStack {
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Batman")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Superman")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Spider-Man")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                    }.padding()
                    
                    HStack{
                        Spacer()

                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Adventuress")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Meredith Grey")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()
                        
                    }.padding()
                    
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Wolverine")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Deadpool")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Santa Claus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })

                    }.padding()
                    
                    HStack {
                        Spacer()

                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Indiana Jones")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("Diablo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        })
                        
                        Spacer()

                    }.padding()
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image("redButton")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }).padding(20)
                }
                
            }
        }
    }
}

struct ChoosePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePlayerView()
    }
}
