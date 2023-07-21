//
//  MasterFreakTutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct MasterFreakTutorialView: View {
    
    let text = "Por último, el modo Masters Freakverse\n\nTendrás que responder a las preguntas y hacer la prueba. Todo a la vez!"
    
    let sharedViews = SharedViews()
    
    var body: some View {
        sharedViews.returnTutorialBackgroundColor(color: .orange)
             .overlay(
                 VStack {
                     Spacer()
                     sharedViews.imageResizableFit(idText: "sword")
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

struct MasterFreakTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        MasterFreakTutorialView()
    }
}
