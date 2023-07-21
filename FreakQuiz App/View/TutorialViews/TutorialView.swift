//
//  TutorialView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 28/7/21.
//

import SwiftUI

struct TutorialView: View {
        
    let viewModel = ChooseModeVM()
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack {
            
            sharedViews.backgroundImage()
            
            VStack {
                TabView {
    
                    FirstTutorialView()
                    SecondTutorialView()
                    EasyTutorialView()
                    FastTutorialView()
                    ThanosTutorialView()
                    MasterFreakTutorialView()
    
                }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode:.automatic))
            }
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
