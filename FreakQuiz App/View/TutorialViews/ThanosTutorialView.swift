//
//  ThanosTutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct ThanosTutorialView: View {
    
    let text = "Os presentamos el modo hardcore, El tritura mentes friki\n\nPreguntas muy rebuscadas... y las respuestas también... "
    
    let sharedViews = SharedViews()
    
    var body: some View {
        sharedViews.returnTutorialBackgroundColor(color: .purple)
             .overlay(
                 VStack {
                     Spacer()
                     sharedViews.imageResizableFit(idText: "hardcoreMode")
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

struct ThanosTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        ThanosTutorialView()
    }
}
