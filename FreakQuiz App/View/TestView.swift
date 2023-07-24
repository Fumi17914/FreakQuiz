//
//  TestView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct TestView: View {
    
    let testModel = TestSample()
    
    let sharedViews = SharedViews()
    
    var body: some View {
        ZStack{
            sharedViews.backgroundImage()
                .aspectRatio(contentMode: .fill)
            
            VStack{
                
                Spacer(minLength: 60)
                
                sharedViews.titleWithBackground(text: "fallaste", color: .red)
                
                Spacer(minLength: 25)
                
                sharedViews.titleView(width: width - 50,
                                      height: height / 2,
                                      text: testModel.test.randomElement() ?? "no test",
                                      textSize: height / 30)
       
                    .offset(y: -15)
                    .multilineTextAlignment(.center)

                Spacer(minLength: 70)
                
                GameButtonsView()
                
                sharedViews.pressStartView(destination: PlayerReadyView())

                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
    
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
