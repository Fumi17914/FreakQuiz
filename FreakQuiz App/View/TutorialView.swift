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
                        .foregroundColor(.white)
                        .overlay(
                            
                            VStack {
                                VStack {
                                    Spacer()
                                    
                                    Image("textLogo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 290, height: 50, alignment: .center)
                                    Image("logo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 120, height: 120, alignment: .center)

                                    Spacer()

                                    Text("Un juego de preguntas frikis")
                                        .multilineTextAlignment(.leading)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("Si fallas, deberás realizar un prueba como penitencia")
                                        .multilineTextAlignment(.leading)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                        .foregroundColor(.black)
                                    Spacer()
                                }.padding()
                                Spacer(minLength: 50)
                            }
                        )
                        .offset(y: -25)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.orange)
                        .overlay(
                            VStack {
                                VStack {
                                    Spacer()
                                    Image("addRed")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100, alignment: .center)
                                    
                                    Text("Botón para añadir jugadores en medio de la partida")
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                        .foregroundColor(.black)
                                }
                                Spacer(minLength: 50)
                                VStack {
                                    Image("scorePurple")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100, alignment: .center)
                                    Text("Botón para mirar vuestras puntuaciones")
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/40))
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                            }.padding()
                        )
                        .offset(y: -25)

                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(
                            VStack {
                                Spacer()
                                Image("easyMode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                Text("Este es el modo más sencillo")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                Spacer()
                                Text("Os encontraréis preguntas de cultura general sobre el mundo friki")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                
                                Spacer()
                                NavigationLink(
                                    destination: ChoosePlayerView().onAppear {self.viewModel.easyMode()},
                                    label: {
                                        Image("pressStart")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                            
                    
                                            
                                    })
                                Spacer()
                        
                            }.padding()
                        )
                        .offset(y: -25)
                       
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.red).opacity(0.85)
                        .overlay(
                            VStack {
                                Spacer()
                                Image("difficultMode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .center)
                                Spacer()
                                
                                Text("Bienvenid@s al modo difícil, un desafío")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                Spacer()
                                Text("Si crees que eres buen@, aquí podrás demostrarlo")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                Spacer()
                                NavigationLink(
                                    destination: ChoosePlayerView().onAppear {self.viewModel.hardMode()},
                                    label: {
                                        Image("pressStart")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                            
                    
                                            
                                    })
                                Spacer()
                        
                            }.padding()

                        )
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
                                
                                Text("Ahora os presentamos el modo rápido, con otro tipo de preguntas")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                Spacer()
                                Text("Antes sólo teníais que ser buen@s. Ahora también rápid@s")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                Spacer()
                                NavigationLink(
                                    destination: ChoosePlayerView().onAppear {self.viewModel.fastMode()},
                                    label: {
                                        Image("pressStart")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                            
                    
                                            
                                    })
                                Spacer()
                        
                            }.padding()
                        )
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
                                
                                Text("Y por último, el modo hardcore, El tritura mentes friki")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                Spacer()
                                Text("Las preguntas son muy rebuscadas y... las respuestas también habrá que rebuscarlas...")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/33))
                                    .foregroundColor(.black)
                                Spacer()
                                NavigationLink(
                                    destination: ChoosePlayerView().onAppear {self.viewModel.thanosMode()},
                                    label: {
                                        Image("pressStart")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                            
                    
                                            
                                    })
                                Spacer()
                        
                            }.padding()
                        )
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
