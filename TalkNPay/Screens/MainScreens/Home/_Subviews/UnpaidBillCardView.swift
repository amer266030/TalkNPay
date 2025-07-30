//
//  UnpaidBillCardView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct UnpaidBillCardView: View {
    var transaction: Transaction
    var action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("You have 1 unpaid bill")
                .font(.headline)
            
            HStack(spacing: 4) {
                Text("Last payment:")
                CurrencyView(amount: transaction.amount, font: .subheadline)
                    .foregroundStyle(.darkPurple)
                Text("to \(transaction.provider)")
                Spacer()
            }
            .fontWidth(.condensed)
            .font(.subheadline)
            .foregroundStyle(.gray)
            
            Button {
                action()
            } label: {
                Label("View Bills", systemImage: "doc.plaintext")
                    .font(.callout)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .foregroundStyle(.white)
                    .background(.blue, in: .rect(cornerRadius: 8))
            }
        }
        .cardWithShadow()
    }
}
