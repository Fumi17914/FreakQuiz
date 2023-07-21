//
//  SplashView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

@available(iOS 16.0, *)
struct SplashView: View {
    
    @State private var isShowingDetailView = false
    @State private var isShowingTutorialView = false
    @State private var isShowingAttributionsView = false
    
    let sharedViews = SharedViews()

    var body: some View {
        NavigationView {
            ZStack{
                sharedViews.backgroundImage()

                VStack {
                    Spacer(minLength: 50)
                    HStack {
                        sharedViews.imageResizableFit(idText: "textLogo")
                            .shadow(color: .black, radius: 10, x: 3, y: 5)
                            .frame(width: width - 35,
                                   height: height / 10,
                                   alignment: .center)
                        
                    }
                    
                    Spacer(minLength: 200)
                    
                    NavigationLink(
                        destination: ChooseModeView(),
                        isActive: $isShowingDetailView,
                        label: {
                            Button(action: {self.isShowingDetailView = true}) {
                                sharedViews.imageResizableFit(idText: "play")
                                    .shadow(color: .black,
                                            radius: 10,
                                            x: 3, y: 5)
                            }
                        })
                    
                    Spacer(minLength: 200)
                    
                    HStack {
                        sharedViews.navigationLinkButton(
                            destination: AtributionsView().toolbarRole(.editor),
                            isActive: $isShowingAttributionsView,
                            label: "Atribuciones",
                            color: .red)

                        sharedViews.navigationLinkButton(
                            destination: TutorialView().toolbarRole(.editor),
                            isActive: $isShowingTutorialView,
                            label: "Tutorial",
                            color: .yellow)

                    }
                    
                    Spacer(minLength: 10)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle()).accentColor(.white)
    }
}

@available(iOS 16.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
