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
                    .frame(width: width / 2 - 20,
                           height: height / 15,
                           alignment: .center)
                    .overlay(Text(label)
                                .multilineTextAlignment(.center)
                                .font(Font.custom("PixelEmulator",
                                                  size: height / 70))
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
                              size: height / 38))
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
    
    func chooseModeButtonNavigation(
        cornerRadius: CGFloat,
        width: CGFloat,
        height: CGFloat,
        image: (some View)? = nil,
        text: String? = nil,
        textSizeProportion: CGFloat,
        foregroundColor: Color
    ) -> some View {
        return RoundedRectangle(cornerRadius: cornerRadius)
            .foregroundColor(foregroundColor)
            .frame(width: width,
                   height: height,
                   alignment: .center)
            .overlay(
                
                HStack {
                    image
                        .padding(25)
                    
                    Text(text ?? "")
                            .font(Font.custom("PixelEmulator",
                                              size: textSizeProportion))
                            .foregroundColor(.white)
                            .padding()
                    
                }.offset(x: -12)
               )
            .addBorder(Color.black, width: 2, cornerRadius: 25)
    }
    
    func titleView(
        width: CGFloat,
        height: CGFloat,
        text: String,
        textSize: CGFloat
    ) -> some View {
        return RoundedRectangle(cornerRadius: 0)
            .frame(width: width,
                   height: height,
                   alignment: .center)
            .overlay(
                Text(text)
                        .font(Font.custom("PixelEmulator",
                                          size: textSize))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 10, x: 3, y: 5)
                        .padding())
            .foregroundColor(.clear)
    }
    
    func titleWithBackground(text: String, color: Color) -> some View {
        return RoundedRectangle(cornerRadius: 30)
            .frame(width: width - 50,
                   height: height / 10,
                   alignment: .center)
            .opacity(0.9)
            .overlay(Text(text)
                        .font(Font.custom("PixelEmulator", size: height / 33))
                        .foregroundColor(.white)
                        .padding())
            .foregroundColor(color)
            .addBorder(Color.black, width: 2, cornerRadius: 30)
    }
    
    func gameButtons(
        destination: some View,
        isActive: Binding<Bool>,
        foregroundColor: Color,
        opacity: CGFloat,
        text: String
    ) -> some View {
        return NavigationLink(destination: destination, isActive: isActive, label: {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 98,
                       height: 80,
                       alignment: .center)
                .foregroundColor(foregroundColor)
                .opacity(opacity)
                .addBorder(Color.black, width: 2, cornerRadius: 15)
                .overlay(
                    imageResizableFit(idText: text)
                        .frame(width: 70,
                               height: 70,
                               alignment: .center)
                )
        
        })
    }
    
    func pressStartView(destination: some View) -> some View {
        return NavigationLink(destination: destination) {
            imageResizableFit(idText: "pressStart")
                .frame(width: width - 50,
                       height: 40,
                       alignment: .center)
                .padding()
                .offset(x: 5)
            
        }
    }
    
}
