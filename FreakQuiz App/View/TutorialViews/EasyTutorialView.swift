//
//  EasyTutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct EasyTutorialView: View {
    
    let text = "Este es el modo más sencillo, el modo fácil\n\nOs encontraréis preguntas de cultura general sobre el mundo friki"
    
    let sharedViews = SharedViews()
    
    var body: some View {
        
        sharedViews.returnTutorialBackgroundColor(color: .yellow)
            .opacity(0.95)
            .overlay(
                VStack {
                    Spacer()
                    sharedViews.imageResizableFit(idText: "easyMode")
                        .frame(width: 100,
                               height: 100,
                               alignment: .center)
                    Spacer()
                    
                    sharedViews.returnTutorialText(text: text)

                    Spacer()
                }
            )
    }
}

struct EasyTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        EasyTutorialView()
    }
}
