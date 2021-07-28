//
//  AppAtributtions.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 28/7/21.
//

import SwiftUI

struct AppAtributtions {
    var name: String
    var url: String = "www.flaticon.com"
    var image: String

}

struct AtributionsView: View {

    var atributtions = [
        AppAtributtions(name: "Made by Those Icons", image: "easyMode"),
        AppAtributtions(name: "Made by Smashicons", image: "fastMode"),
        AppAtributtions(name: "Made by Darius Dan", image: "hardcoreMode"),
        AppAtributtions(name: "Made by Freepik", image: "difficultMode")
    ]
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                    ForEach( 0..<atributtions.count ) { atribution in
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height/10, alignment: .center)
                            .textCase(.uppercase)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    Image(atributtions[atribution].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .offset(x: 10)
                                    Spacer()
                                    Text(atributtions[atribution].name)
                                        .foregroundColor(.black)
                                        .padding()
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("", size: UIScreen.main.bounds.height/65))
                                    Spacer()
                                    Text(atributtions[atribution].url)
                                        .foregroundColor(.black)
                                        .padding()
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("", size: UIScreen.main.bounds.height/65))
                                    
                                })
                    }
                }
                
                HStack {
                    Image("textLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 50, alignment: .center)
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                    
                }.offset(x: 10)
            }
        }
        .navigationBarTitle("App Atributtions")
    }
}
