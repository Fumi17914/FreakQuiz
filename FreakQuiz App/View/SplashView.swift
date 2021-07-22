//
//  SplashView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(25)
                    
                    NavigationLink(
                        destination: ChooseModeView(),
                        isActive: $isShowingDetailView,
                        label: {
                            Button(action: {self.isShowingDetailView = true}) {
                                Image("play")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            }
                        })
                    
                    Image("textLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(40)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
