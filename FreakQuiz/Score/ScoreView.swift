//
//  ScoreView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 22/2/21.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("SCORE")
                        .font(Font.custom("PixelEmulator", size: 30))
                        .foregroundColor(.white)
                    
                    HStack{
                        Spacer()
                        Image("lakitu")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 50, idealWidth: 70, maxWidth: 120, minHeight: 100, idealHeight: 150, maxHeight: 120, alignment: .topLeading)
                            .offset(x: -20)
                    }
                    
                    List {
                        Group{
                            Text("Batman")
                            Text("Superman")
                        }
                        
                    }
                    .font(.title)
                    .listRowBackground(Color.clear)
                    .padding()

                    
                    Spacer()
                    
                    NavigationLink(destination: PlayerReadyView()) {
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

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
