//
//  CardWithShadowModifier.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 01/02/2025.
//

import SwiftUI

struct CardWithShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(
                        Color.bk4.gradient
                            .shadow(.inner(color: .y4.opacity(0.3), radius: 1, x: -1, y: -1))
                            .shadow(.inner(color: .white.opacity(0.3), radius: 2, x: 1, y: 1))
                    )
                    .shadow(color: Color.y4.opacity(0.1), radius: 2, x: -1, y: -1)
            )
    }
}

extension View {
    func cardWithShadow() -> some View {
        self.modifier(CardWithShadowModifier())
    }
}
