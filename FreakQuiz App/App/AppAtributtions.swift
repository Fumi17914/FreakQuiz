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

    let atributtions = [
        AppAtributtions(name: "Made by Those Icons", image: "easyMode"),
        AppAtributtions(name: "Made by Freepik", image: "difficultMode"),
        AppAtributtions(name: "Made by Smashicons", image: "fastMode"),
        AppAtributtions(name: "Made by Darius Dan", image: "hardcoreMode"),
        AppAtributtions(name: "Made by Freepik", image: "sword"),
        AppAtributtions(name: "Made by Freepik", image: "gamer"),
        AppAtributtions(name: "Made by Freepik", image: "arcade"),
        AppAtributtions(name: "Made by Freepik", image: "gamingChair"),
        AppAtributtions(name: "Made by Smash icons", image: "gamingController"),
        AppAtributtions(name: "Made by Freepik", image: "gamingTrophy")
    ]
    
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack {
            sharedViews.backgroundImage()
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach( 0..<atributtions.count ) { atribution in
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height/10, alignment: .center)
                            .textCase(.uppercase)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    sharedViews.imageResizableFit(idText: atributtions[atribution].image)
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .offset(x: 10)
                                    Spacer()
                                    Text(atributtions[atribution].name)
                                        .foregroundColor(.black)
                                        .padding()
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("", size: height/65))
                                    Spacer()
                                    Text(atributtions[atribution].url)
                                        .foregroundColor(.black)
                                        .padding()
                                        .multilineTextAlignment(.center)
                                        .font(Font.custom("", size: height/65))
                                    
                                })
                            .addBorder(Color.black, width: 2, cornerRadius: 30)

                    }
                }
                
                sharedViews.imageResizableFit(idText: "textLogo")
                    .frame(width: width - 50,
                           height: height / 10,
                           alignment: .center)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}
