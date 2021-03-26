//
//  ErrorView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Spacer()
                    
                    Text("ERROR")
                        .font(Font.custom("PixelEmulator", size: 35))
                        .foregroundColor(.red)
                    
                    Spacer()
                    Spacer()
                    
                    Text("LA RESPUESTA ERA:")
                        .font(Font.custom("PixelEmulator", size: 17))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text("Answer")
                        .font(Font.custom("PixelEmulator", size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                    Image("luigi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(65)
                    
                    NavigationLink(destination: TestView()) {
                        Image("penanceEasy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
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

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
