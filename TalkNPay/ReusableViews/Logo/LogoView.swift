//
//  LogoView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct LogoView: View {
    @State private var isAnimating = false
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        
        VStack {
            HStack {
                ShapeT()
                    .foregroundStyle(isAnimating ? .white : .bk1)
                    .offset(x: isAnimating ? 0 : -screenWidth, y: isAnimating ? 0 : -100)
                    .animation(.smooth(duration: 2).delay(0.7), value: isAnimating)
                ShapeA()
                    .foregroundStyle(isAnimating ? .white : .bk1)
                    .offset(x: isAnimating ? 0 : -screenWidth, y: isAnimating ? 0 : -100)
                    .animation(.smooth(duration: 2).delay(0.5), value: isAnimating)
                ShapeL()
                    .foregroundStyle(isAnimating ? .white : .bk1)
                    .offset(x: isAnimating ? 0 : -screenWidth, y: isAnimating ? 0 : -100)
                    .animation(.smooth(duration: 2).delay(0.3), value: isAnimating)
                    .aspectRatio(0.8, contentMode: .fit)
                ShapeK()
                    .foregroundStyle(isAnimating ? .white : .bk1)
                    .offset(x: isAnimating ? 0 : -screenWidth, y: isAnimating ? 0 : -100)
                    .animation(.smooth(duration: 2).delay(0.1), value: isAnimating)
            }
            
            ShapeN()
                .aspectRatio(contentMode: .fit)
                .padding(.leading, 40)
                .scaleEffect(isAnimating ? 1 : 0)
                .animation(.smooth(duration: 1.2).delay(0.75), value: isAnimating)
            
            HStack {
                ShapePay()
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.smooth(duration: 2.5).delay(1.5), value: isAnimating)
            }
        }
        .foregroundStyle(.white)
        .aspectRatio(contentMode: .fit)
        .padding(.horizontal, 64)
        .onAppear { isAnimating = true }
        .onDisappear { isAnimating = false }
    }
}

//#Preview {
//    LogoView()
//}
