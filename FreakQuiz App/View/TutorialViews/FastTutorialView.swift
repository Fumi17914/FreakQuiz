//
//  FastTutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct FastTutorialView: View {
    
    let text = "Este es el Modo rápido, menos tiempo para responder \n\nAntes sólo teníais que ser buen@s. Ahora también rápid@s"
    
    let sharedViews = SharedViews()
    
    var body: some View {
        sharedViews.returnTutorialBackgroundColor(color: .blue)
            .overlay(
                VStack {
                    Spacer()
                    sharedViews.imageResizableFit(idText: "fastMode")
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

struct FastTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        FastTutorialView()
    }
}
