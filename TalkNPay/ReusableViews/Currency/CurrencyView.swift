//
//  CurrencyView.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 19/04/2025.
//

import SwiftUI

struct CurrencyView: View {
    var amount: Double
    var font: Font = .body
    
    var body: some View {
        HStack(spacing: 0) {
            SarSymbolView(font: font)
            Text(amount.formattedAmount())
                .font(font)
        }
        .environment(\.layoutDirection, .leftToRight)
    }
}


#Preview {
    CurrencyView(amount: 100)
}
