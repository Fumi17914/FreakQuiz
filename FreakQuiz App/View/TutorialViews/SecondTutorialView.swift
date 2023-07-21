//
//  SecondTutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct SecondTutorialView: View {
    
    let sharedViews = SharedViews()
    
    var body: some View {
        
        sharedViews.returnTutorialBackgroundColor(color: Color.init(hex: "FF6F95"))
            .overlay(
                VStack {
                    Spacer(minLength: 20)
                    VStack {
                        sharedViews.returnBackGroundImageLogos(color: .orange)
                            .overlay(
                                sharedViews.imageResizableFit(idText: "gamingController")
                                    .frame(width: 70,
                                           height: 70,
                                           alignment: .center)
                            )
                        
                        sharedViews.returnTutorialText(text: "añadir jugadores")
                        
                    }
                    Spacer(minLength: 20)
                    VStack {
                        sharedViews.returnBackGroundImageLogos(color: .yellow)
                            .overlay(
                                sharedViews.imageResizableFit(idText: "gamingChair")
                                    .frame(width: 70,
                                           height: 70,
                                           alignment: .center)
                            )
                        
                        sharedViews.returnTutorialText(text: "cambiar modo")
                    }
                    Spacer(minLength: 20)
                    VStack {
                        sharedViews.returnBackGroundImageLogos(color: .blue)
                            .overlay(
                                sharedViews.imageResizableFit(idText: "gamingTrophy")
                                    .frame(width: 70,
                                           height: 70,
                                           alignment: .center)
                                
                            )
                        sharedViews.returnTutorialText(text: "puntuaciones")
                    }
                    Spacer(minLength: 20)
                    
                }.padding()
            )
            
        
    }
}

struct SecondTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTutorialView()
    }
}
