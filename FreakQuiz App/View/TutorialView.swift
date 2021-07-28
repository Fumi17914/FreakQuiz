//
//  TutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 28/7/21.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TabView {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.yellow)
                        .overlay(
                            Text("")
                        )
                        .offset(y: -25)
                       
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.red)
                        .overlay(
                            Text("")
                        )
                        .offset(y: -25)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.blue)
                        .overlay(
                            Text("")
                        )
                        .offset(y: -25)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 250, alignment: .center)
                        .foregroundColor(.purple)
                        .overlay(
                            Text("")
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
