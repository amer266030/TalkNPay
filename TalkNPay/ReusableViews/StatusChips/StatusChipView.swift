//
//  StatusChipView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct StatusChipView: View {
    var title: String
    var foregroundColor: Color
    var backgroundColor: Color = .white
    
    var body: some View {
        HStack(spacing: 8) {
            Text(title)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }
        .font(.caption)
        .bold()
        .padding(.vertical, 4)
        .padding(.horizontal, 8)
        .foregroundStyle(foregroundColor)
        .background(backgroundColor, in: Capsule())
        .background {
            Capsule()
                .stroke(foregroundColor, lineWidth: 1.5)
        }
    }
}

#Preview {
    StatusChipView(title: "something", foregroundColor: Color.darkPurple)
}
