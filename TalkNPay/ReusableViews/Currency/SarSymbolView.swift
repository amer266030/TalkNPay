//
//  SarSymbolView.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 19/04/2025.
//

import SwiftUI

struct SarSymbolView: View {
    var font: Font = .body
    
    var body: some View {
        ZStack {
            if let scalar = UnicodeScalar(0xE900) {
                Text(String(scalar))
                    .font(fontForSARSymbol(from: font))
                    .foregroundStyle(.primary)
            }
        }
    }
    
    private func fontForSARSymbol(from font: Font) -> Font {
        switch font {
        case .largeTitle: return .custom("saudi_riyal", size: 34)
        case .title: return .custom("saudi_riyal", size: 28)
        case .title2: return .custom("saudi_riyal", size: 22)
        case .title3: return .custom("saudi_riyal", size: 20)
        case .headline: return .custom("saudi_riyal", size: 17)
        case .subheadline: return .custom("saudi_riyal", size: 15)
        case .callout: return .custom("saudi_riyal", size: 16)
        case .caption: return .custom("saudi_riyal", size: 12)
        case .caption2: return .custom("saudi_riyal", size: 11)
        case .footnote: return .custom("saudi_riyal", size: 13)
        default: return .custom("saudi_riyal", size: 17)
        }
    }
}

#Preview {
    SarSymbolView()
}
