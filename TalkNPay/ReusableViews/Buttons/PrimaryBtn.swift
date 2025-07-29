//
//  PrimaryBtnView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct PrimaryBtn: View {
    @State private var animate: Bool = false
    
    var title: LocalizedStringKey
    var backgroundColor: AnyGradient = Color.blue.gradient
    var foregroundColor: Color = Color.black
    var borderColor: Color = .clear
    var animation: Animation = .easeOut(duration: 0.5)
    var isEnabled: Bool = true
    var action: () -> Void
    
    var body: some View {
        Button {
            if isEnabled { withAnimation(animation) { action() } }
        } label: {
            HStack {
                HStack {
                    Text(title)
                        .lineLimit(1)
                        .minimumScaleFactor(0.7)
                }
                .padding()
                .padding(.horizontal, 8)
            }
            .opacity(animate ? 1 : 0)
            .foregroundStyle(isEnabled ? foregroundColor : .gray)
            .background(backgroundColor, in: .capsule)
            .scaleEffect(animate ? 1 : 0.5)
            .animation(.bouncy(duration: 0.8, extraBounce: 0.3), value: animate)
            .onAppear { animate = true }
        }
    }
}

#Preview {
    PrimaryBtn(title: "Primary") {}
}
