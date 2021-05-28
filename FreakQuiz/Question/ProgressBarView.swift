//
//  ProgressBarView.swift
//  FreakQuiz
//
//  Created by Jose Fumanal Quintana on 29/5/21.
//

import SwiftUI

struct ProgressBarView: View {
    
    @State var currentProgress: CGFloat = 0.0
    @State private var shouldNavigate = false
    
    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                if Game.shared.mode == .fast {
                    self.currentProgress += 0.02
                } else {
                    self.currentProgress += 0.01
                }
                if self.currentProgress >= UIScreen.main.bounds.width/308 {
                    timer.invalidate()
                    self.shouldNavigate =  true
                }
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                .frame(width: 300*currentProgress, height: 20)
                .background(
                    NavigationLink(destination: CorrectOrTestView(),
                                   isActive: $shouldNavigate) { CorrectOrTestView() }.hidden()
                )
            
        }.onAppear {
            self.startLoading()
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
