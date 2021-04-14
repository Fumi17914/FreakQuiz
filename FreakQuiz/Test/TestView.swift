//
//  TestView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text("TEST")
                        .font(Font.custom("PixelEmulator", size: 35))
                        .foregroundColor(.yellow)
                        .padding(50)
                    
                    Spacer()
                    
                    Text("quédate en ropa interior y haz 10 flexiones")
                        .font(Font.custom("PixelEmulator", size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    NavigationLink(destination: PlayerReadyView()) {
                        Image("pressStart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }.offset(x: 5)
                
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.all)
            
        }
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
