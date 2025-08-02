//
//  UnpaidBillCardView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct UnpaidBillCardView: View {
    var bill: Bill
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .firstTextBaseline) {
                    Image(systemName: bill.provider.icon)
                        .foregroundStyle(bill.paymentStatus.color)
                    Text(bill.provider.name)
                        
                    Spacer()
                    CurrencyView(amount: bill.amount, font: .footnote)
                }
                .font(.subheadline)
                .fontWeight(.semibold)
                
                HStack(spacing: 4) {
                    Text(bill.dueDate.formatted(date: .abbreviated, time: .omitted))
                    Spacer()
                    HStack {
                        Text("Details")
                        Image(systemName: "arrow.right.circle")
                    }
                    .font(.footnote)
                    .foregroundStyle(.y1)
                }
                .font(.caption2)
            }
            .cardWithShadow()
        }
        .allowsHitTesting(true)
        .buttonStyle(.plain)
    }
}
