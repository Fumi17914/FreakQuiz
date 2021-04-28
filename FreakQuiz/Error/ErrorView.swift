//
//  ErrorView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image ("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 235, height: 80, alignment: .center)
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .textCase(.uppercase)
                        .overlay(Text("wroong")
                                    .offset(x: 5)
                                    .font(Font.custom("PixelEmulator", size: 33))
                                    .foregroundColor(.white))
                        .offset(y: 50)
                    
                    Spacer()
                    Spacer()
                    Text("ANSWER")
                        .font(Font.custom("PixelEmulator", size: 25))
                        .foregroundColor(.white)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Image("luigi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(65)
                    
                    Spacer()
                    NavigationLink(destination: TestView()) {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 125, alignment: .center)
                            .foregroundColor(.black)
                            .overlay(Text("punishment")
                                        .offset(x: 5)
                                        .font(Font.custom("PixelEmulator", size: 33))
                                        .foregroundColor(.white))
                            .multilineTextAlignment(.center)
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
