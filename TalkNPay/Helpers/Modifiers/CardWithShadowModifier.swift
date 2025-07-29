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
                    .fill(Color.white)
                    .shadow(color: Color.gray.opacity(0.3), radius: 2)
            )
    }
}

extension View {
    func cardWithShadow() -> some View {
        self.modifier(CardWithShadowModifier())
    }
}
