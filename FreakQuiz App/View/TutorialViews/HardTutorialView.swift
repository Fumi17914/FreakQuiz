//
//  HardTutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct HardTutorialView: View {
    
    let text = "El Modo difícil es un auténtico desafío\n\nSi crees que eres buen@, aquí podrás demostrarlo con tus conocimientos"
    
    let sharedViews = SharedViews()
    
    var body: some View {
        
        sharedViews.returnTutorialBackgroundColor(color: .red)
            .opacity(0.95)
            .overlay(
                VStack {
                    Spacer()
                    sharedViews.imageResizableFit(idText: "difficultMode")
                        .frame(width: 100,
                               height: 100,
                               alignment: .center)
                    Spacer()
                    
                    sharedViews.returnTutorialText(text: text)

                    Spacer()
                }.padding()
                
            )
    }
}

struct HardTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        HardTutorialView()
    }
}
