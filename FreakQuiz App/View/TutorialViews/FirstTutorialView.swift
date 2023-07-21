//
//  FirstTutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct FirstTutorialView: View {
    
    let sharedViews = SharedViews()
    
    let text = "Un juego de preguntas frikis\n\nIntenta responder antes de que se te acabe el tiempo\n\nSi fallas o el tiempo se acaba, deberás realizar un prueba como penitencia"
    
    var body: some View {
        sharedViews.returnTutorialBackgroundColor(color: Color.init(hex: "17181F"))
            .overlay(
                VStack {
                        Spacer()
                    sharedViews.imageResizableFit(idText: "textLogo")
                            .frame(width: width - 95,
                                   height: height / 10,
                                   alignment: .center)

                        Spacer(minLength: 20)

                    sharedViews.returnTutorialText(text: text)
                    
                        Spacer()
                    }.padding(25)
              
            )
    }
}

struct FirstTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTutorialView()
    }
}
