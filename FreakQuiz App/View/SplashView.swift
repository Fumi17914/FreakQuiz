//
//  SplashView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isShowingDetailView = false
  
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer(minLength: 50)
                    HStack {
                        Image("textLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width - 35, height: UIScreen.main.bounds.height / 10, alignment: .center)
                        
                    }
                    
                    Spacer(minLength: 200)
                    
                    NavigationLink(
                        destination: ChooseModeView(),
                        isActive: $isShowingDetailView,
                        label: {
                            Button(action: {self.isShowingDetailView = true}) {
                                Image("play")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        })
                    
                    Spacer(minLength: 200)
                    
                    HStack {
                        NavigationLink(
                            destination: AtributionsView(),
                            label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 20, height: UIScreen.main.bounds.height/15, alignment: .center)
                                    .textCase(.uppercase)
                                    .overlay(Text("Atributtions")
                                                .multilineTextAlignment(.center)
                                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/70))
                                                .foregroundColor(.black)
                                                .offset(x: 2)
                                                .padding())
                                    .foregroundColor(.red)
                                    .addBorder(Color.black, width: 2, cornerRadius: 20)

                            })
                        
                        NavigationLink(
                            destination: TutorialView(),
                            label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 20, height: UIScreen.main.bounds.height/15, alignment: .center)
                                    .textCase(.uppercase)
                                    .opacity(0.9)
                                    .overlay(Text("Tutorial")
                                                .multilineTextAlignment(.center)
                                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height/70))
                                                .foregroundColor(.black)
                                                .offset(x: 2)
                                                .padding())
                                    .foregroundColor(.yellow)
                                    .addBorder(Color.black, width: 2, cornerRadius: 20)
                                    
                                
                            })
                    }
                    
                    Spacer(minLength: 10)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle()).accentColor(.white)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
