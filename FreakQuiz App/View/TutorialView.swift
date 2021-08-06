//
//  TutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 28/7/21.
//

import SwiftUI

struct TutorialView: View {
    
    let viewModel = ChooseModeVM()
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TabView {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(Color.init(hex: "17181F"))
                        .overlay(
                            
                            VStack {
                                    Spacer()
                                    Image("textLogo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: UIScreen.main.bounds.width - 95, height: UIScreen.main.bounds.height / 10, alignment: .center)

                                    Spacer(minLength: 20)

                                    Text("Un juego de preguntas frikis\n\nIntenta responder antes de que se te acabe el tiempo\n\nSi fallas o el tiempo se acaba, deberás realizar un prueba como penitencia")
                                        .multilineTextAlignment(.leading)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding(25)
                          
                        )
                        .addBorder(Color.black, width: 2, cornerRadius: 20)
                        .offset(y: -25)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.init(hex: "FF6F95"))
                        .overlay(
                            VStack {
                                Spacer(minLength: 20)
                                VStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .frame(width: 98, height: 80, alignment: .center)
                                        .foregroundColor(.orange).opacity(0.95)
                                        .addBorder(Color.black, width: 2, cornerRadius: 15)
                                        .overlay(
                                            
                                            Image("gamingController")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 70, height: 70, alignment: .center)
                        
                                        )
                                    
                                    Text("añadir jugadores")
                                        .multilineTextAlignment(.leading)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                        .foregroundColor(.white)
                                }
                                Spacer(minLength: 20)
                                VStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .frame(width: 98, height: 80, alignment: .center)
                                        .foregroundColor(.yellow).opacity(0.95)
                                        .addBorder(Color.black, width: 2, cornerRadius: 15)
                                        .overlay(
                                            
                                            Image("gamingChair")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 70, height: 70, alignment: .center)
                        
                                        )
                                    
                                    Text("cambiar modo de juego")
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                        .foregroundColor(.white)
                                }
                                Spacer(minLength: 20)
                                VStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .frame(width: 98, height: 80, alignment: .center)
                                        .foregroundColor(.blue).opacity(0.95)
                                        .addBorder(Color.black, width: 2, cornerRadius: 15)
                                        .overlay(
                                            
                                            Image("gamingTrophy")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 70, height: 70, alignment: .center)
                        
                                        )
                                    Text("puntuaciones")
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                        .foregroundColor(.white)
                                }
                                Spacer(minLength: 20)

                            }.padding()
                        )
                        .addBorder(Color.black, width: 2, cornerRadius: 20)
                        .offset(y: -25)

                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.yellow.opacity(0.95))
                        .overlay(
                            VStack {
                                Spacer()
                                Image("easyMode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                Text("Este es el modo más sencillo, el modo fácil\n\nOs encontraréis preguntas de cultura general sobre el mundo friki")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                    .foregroundColor(.white).padding()
                                Spacer()
                            }
                        )
                        .addBorder(Color.black, width: 2, cornerRadius: 20)
                        .offset(y: -25)
                       
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.red).opacity(0.95)
                        .overlay(
                            VStack {
                                Spacer()
                                Image("difficultMode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                Text("El Modo difícil es un auténtico desafío\n\nSi crees que eres buen@, aquí podrás demostrarlo con tus habilidades")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                    .foregroundColor(.white).padding()
                                Spacer()
                            }.padding()

                        )
                        .addBorder(Color.black, width: 2, cornerRadius: 20)
                        .offset(y: -25)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.blue)
                        .overlay(
                            VStack {
                                Spacer()
                                Image("fastMode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                
                                Text("Este es el Modo rápido, menos tiempo para responder \n\nAntes sólo teníais que ser buen@s. Ahora también rápid@s")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                    .foregroundColor(.white).padding()
                                Spacer()

                            }.padding()
                        )
                        .addBorder(Color.black, width: 2, cornerRadius: 20)
                        .offset(y: -25)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.purple)
                        .overlay(
                            VStack {
                                Spacer()
                                Image("hardcoreMode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                
                                Text("Os presentamos el modo hardcore, El tritura mentes friki\n\nPreguntas muy rebuscadas... y las respuestas también... ")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                    .foregroundColor(.white).padding()
                                Spacer()
                            }.padding()
                        )
                        .addBorder(Color.black, width: 2, cornerRadius: 20)
                        .offset(y: -25)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.orange)
                        .overlay(
                            VStack {
                                Spacer()
                                Image("sword")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                
                                Text("Por último, el modo Masters Freakverse\n\nTendrás que responder a las preguntas y hacer la prueba. Todo a la vez!")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/38))
                                    .foregroundColor(.white).padding()
                                Spacer()
                            }.padding()
                        )
                        .addBorder(Color.black, width: 2, cornerRadius: 20)
                        .offset(y: -25)
    
                }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode:.automatic))
            }
        }.navigationBarTitle("Tutorial")
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
