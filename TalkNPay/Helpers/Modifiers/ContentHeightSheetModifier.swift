//
//  ContentHeightSheetModifier.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 02/04/2025.
//

import Foundation
import SwiftUI

private struct ContentHeightSheetModifier: ViewModifier {
    @AppStorage("isEnglish") var isEnglish: Bool = true
    @State private var contentHeight: CGFloat = .zero

    private var contentHeightMeasurerView: some View {
        GeometryReader { geometry in
            Color.clear
                .onAppear {
                    contentHeight = geometry.size.height
                }
        }
    }

    func body(content: Content) -> some View {
        content
            .background(contentHeightMeasurerView)
            .presentationDetents([.height(max(contentHeight, 100))]) // fallback height
            .environment(\.layoutDirection, isEnglish ? .leftToRight : .rightToLeft)
    }
}

extension View {
    func adjustSheetHeightToContent() -> some View {
        self.modifier(ContentHeightSheetModifier())
    }
}
