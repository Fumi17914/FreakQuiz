//
//  SharedViews.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 21/7/23.
//

import SwiftUI

struct SharedViews {
    
    func backgroundImage() -> some View {
        return Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
    
    func imageResizableFit(idText: String) -> some View {
        return Image(idText)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }

    
//    MARK: SplashView
    func navigationLinkButton<Destination: View>(
        destination: Destination,
        isActive: Binding<Bool>,
        label: String,
        color: Color
    ) -> some View {
        return NavigationLink(
            destination: destination,
            isActive: isActive,
            label: {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: UIScreen.main.bounds.width / 2 - 20,
                           height: UIScreen.main.bounds.height / 15,
                           alignment: .center)
                    .textCase(.uppercase)
                    .overlay(Text(label)
                                .multilineTextAlignment(.center)
                                .font(Font.custom("PixelEmulator", size: UIScreen.main.bounds.height / 70))
                                .foregroundColor(.white)
                                .offset(x: 2)
                                .padding())
                    .foregroundColor(color)
                    .opacity(0.95)
                    .addBorder(Color.black, width: 2, cornerRadius: 20)
            }
        )
    }
    
    func returnTutorialBackgroundColor(color: Color) -> some View {
            return RoundedRectangle(cornerRadius: 25.0)
            .frame(width: width - 50,
                   height: height - 250,
                   alignment: .center)
            .foregroundColor(color)
            .addBorder(Color.black, width: 2, cornerRadius: 20)
            .offset(y: -25)
    }
    
    func returnTutorialText(text: String) -> some View {
        return Text(text)
            .multilineTextAlignment(.leading)
            .font(Font.custom("PixelEmulator",
                              size: height/38))
            .foregroundColor(.white)
            .padding()
    }
    
    func returnBackGroundImageLogos(color: Color) -> some View {
        return RoundedRectangle(cornerRadius: 15)
            .frame(width: 98,
                   height: 80,
                   alignment: .center)
            .foregroundColor(color)
            .opacity(0.95)
            .addBorder(Color.black,
                       width: 2,
                       cornerRadius: 15)
    }
    
    
    
}
