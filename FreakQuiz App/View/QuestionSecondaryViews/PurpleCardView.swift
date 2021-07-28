//
//  PurpleCardView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 28/7/21.
//

import SwiftUI

struct PurpleCardView: View {
    public var body: some View {
        ZStack {
            Color.clear
            SlideView {
                VStack {
                    Spacer()
                }
            }
        }
    }
}

struct SlideView<Content> : View where Content : View {

    var content: () -> Content
    
    public init(content: @escaping () -> Content) {
        self.content = content
    }
     
    public var body: some View {
        ModifiedContent(content: self.content(), modifier: CardPurple())
    }
}


struct CardPurple: ViewModifier {
    @State private var dragging = false
    @State private var position: CGFloat = UIScreen.main.bounds.height - 50
    @State var offset: CGSize = .zero
    let timer = Timer.publish(
        every: 0.66,       // Second
            tolerance: 0.1, // Gives tolerance so that SwiftUI makes optimization
            on: .main,      // Main Thread
            in: .common     // Common Loop
        ).autoconnect()

    func body(content: Content) -> some View {
        ZStack(alignment: .top) {
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 2.5)
                    .frame(width: 40, height: 5.0)
                    .foregroundColor(Color.white)
                    .padding(10)
                content.padding(.top, 30)              
                AnswersView()
            }
            .frame(minWidth: UIScreen.main.bounds.width)
            .scaleEffect(x: 1, y: 1, anchor: .center)
            .background(Color.purple)
            .cornerRadius(15)
            
        }.onReceive(timer) { (_) in
            let heightBound = UIScreen.main.bounds.height / 2
            let randomOffset = CGSize(
                width: 1,
                height: CGFloat.random(in: -heightBound...heightBound/2)
            )
            withAnimation {
                self.offset = randomOffset
            }
        }
        .offset(y: position)
        .offset(offset)
        .animation(dragging ? nil : {
            Animation.interpolatingSpring(stiffness: 100, damping: 40.0, initialVelocity: 5.0)
        }())
        .onAppear {
           position = UIScreen.main.bounds.height / 2.1
        }
        .onDisappear {
            self.timer.upstream.connect().cancel()
        }
    }
}
struct PurpleCardView_Previews: PreviewProvider {
    static var previews: some View {
        PurpleCardView()
    }
}
