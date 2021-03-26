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
                    HStack{
                        
                        Spacer()
                        Spacer()
                     
                        Text("TEST")
                            .font(Font.custom("PixelEmulator", size: 35))
                            .foregroundColor(.yellow)
                            .padding(40)
                        
                        Spacer()
                        NavigationLink (destination: ScoreView()) {
                            Image("star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60, alignment: .center)
                        }
                    }
                    
                    Spacer()
              

                    Text("quédate en ropa interior y haz 10 flexiones")
                        .font(Font.custom("PixelEmulator", size: 25))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    Spacer()

                    
                    Image("zoidberg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 10, idealWidth: 250, maxWidth: 300, minHeight: 200, idealHeight: 200, maxHeight: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Button(action: {}) {
                        Image("continueEasy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
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
