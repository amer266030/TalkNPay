//
//  BillsNavBtn.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct BillsNavBtn: View {
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Text("View All Bills")
                Image(systemName: "arrow.right.circle")
            }
            .font(.footnote)
            .foregroundStyle(.y1)
        }
        .allowsHitTesting(true)
        .buttonStyle(.plain)
    }
}

#Preview {
    BillsNavBtn() {}
}
