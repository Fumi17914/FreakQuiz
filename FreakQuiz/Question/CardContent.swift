//
//  CardContent.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 12/4/21.
//

import SwiftUI


struct CardContent: View {
    public var body: some View {
        
        ZStack {
            Color.clear
            Text("")
            SlideOverView {
                VStack {
                    NavigationView {
                        ZStack{
                            Color.yellow.edgesIgnoringSafeArea(.all)
                            VStack{
                                
                                NavigationLink(destination: CorrectView()) {
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .center)
                                        .foregroundColor(.white)
                                        .overlay(Text("1")
                                                    .font(Font.custom("PixelEmulator", size: 18))
                                                    .foregroundColor(.black))
                                        .multilineTextAlignment(.center)
                                }
                    
                                NavigationLink(destination: CorrectView()) {
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .center)
                                        .foregroundColor(.white)
                                        .overlay(Text("2")
                                                    .font(Font.custom("PixelEmulator", size: 18))
                                                    .foregroundColor(.black))
                                        .multilineTextAlignment(.center)
                                }
                                
                                NavigationLink(destination: CorrectView()) {
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .center)
                                        .foregroundColor(.white)
                                        .overlay(Text("3")
                                                    .font(Font.custom("PixelEmulator", size: 18))
                                                    .foregroundColor(.black))
                                        .multilineTextAlignment(.center)
                                }
                                
                                NavigationLink(destination: CorrectView()) {
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .center)
                                        .foregroundColor(.white)
                                        .overlay(Text("4")
                                                    .font(Font.custom("PixelEmulator", size: 18))
                                                    .foregroundColor(.black))
                                        .multilineTextAlignment(.center)
                                }
                                                    
                                RoundedRectangle(cornerRadius: 100)
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .foregroundColor(.white)
                                    .overlay(Text("15")
                                                .font(Font.custom("PixelEmulator", size: 30))
                                                .foregroundColor(.black))
                                    .multilineTextAlignment(.center)
                                    .offset(y: 10)
                                
                                Spacer()
                            }.offset(y: -30.0)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct SlideOverView<Content> : View where Content : View {

    var content: () -> Content
    
    public init(content: @escaping () -> Content) {
        self.content = content
    }
     
    public var body: some View {
        ModifiedContent(content: self.content(), modifier: CardView())
    }
}

struct CardView: ViewModifier {
    @State private var dragging = false
    @GestureState private var dragTracker: CGSize = CGSize.zero
    @State private var position: CGFloat = UIScreen.main.bounds.height - 75
    
    func body(content: Content) -> some View {
        ZStack(alignment: .top) {
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 2.5)
                    .frame(width: 40, height: 5.0)
                    .foregroundColor(Color.white)
                    .padding(10)
                content.padding(.top)
            }
            .frame(minWidth: UIScreen.main.bounds.width)
            .background(Color.yellow)
            .cornerRadius(30)
        }
        .offset(y:  max(100, position + self.dragTracker.height))
        .animation(dragging ? nil : {
            Animation.interpolatingSpring(stiffness: 250.0, damping: 30.0, initialVelocity: 5.0)
        }())
        .gesture(DragGesture()
                    .updating($dragTracker) { drag, state, transaction in state = drag.translation }
                    .onChanged {_ in  dragging = true }
                    .onEnded(onDragEnded))
    }
    
    private func onDragEnded(drag: DragGesture.Value) {
        dragging = false
        let high = 350
        let low: CGFloat = 350
        let dragDirection = drag.predictedEndLocation.y - drag.location.y
        //can also calculate drag offset to make it more rigid to shrink and expand
        if dragDirection > 0 {
            position = CGFloat(high)
        } else {
            position = low
        }
    }
}

struct SlideOverView_Previews: PreviewProvider {
    static var previews: some View {
        CardContent()
    }
}
