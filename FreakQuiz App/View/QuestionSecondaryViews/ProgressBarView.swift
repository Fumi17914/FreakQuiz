//
//  ProgressBarView.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import SwiftUI

struct ProgressBarView: View {
    
    @State private var currentProgress: CGFloat = 0.0
    @State private var shouldNavigate = false
    
    @State var new: Timer?
    
    func startLoading() {
        new = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                if Game.shared.mode == .fast {
                    self.currentProgress += 0.015
                } else if Game.shared.mode == .easy || Game.shared.mode == .hard {
                    self.currentProgress += 0.01
                } else if Game.shared.mode == .thanos {
                    self.currentProgress += 0.007
                } else if Game.shared.mode == .freak {
                    self.currentProgress += 0.015
                }
                
                if self.currentProgress >= UIScreen.main.bounds.width/308 {
                    timer.invalidate()
                    self.shouldNavigate = true
                }
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Game.shared.modeSelectedBackgroundColor())
                .addBorder(Color.black, width: 2, cornerRadius: 20)
                .frame(width: 300*currentProgress, height: 20)
            
           /*NavigationLink(
                destination: TestView(),
                isActive: $shouldNavigate,
                label: {
                    EmptyView()
                })*/

        }.onAppear {
            self.startLoading()
        }
        .onDisappear {
            new?.invalidate()
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}

