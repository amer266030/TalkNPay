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
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 4) {
                    Text("To \(bill.provider.name),")
                    Text("For the amount of")
                    CurrencyView(amount: bill.amount, font: .subheadline)
                        .foregroundStyle(.y4)
                    Spacer()
                }
                
                HStack {
                    Text("Due: \(bill.dueDate.formatted(.dateTime.month().day()))")
                    Spacer()
                    Button {
                        action()
                    } label: {
                        HStack {
                            Text("View Bill")
                            Image(systemName: "arrow.right.circle")
                        }
                        .font(.footnote)
                        .foregroundStyle(.y1)
                    }
                }
            }
            .fontWidth(.condensed)
            .font(.subheadline)
            .foregroundStyle(.white)
        }
        .cardWithShadow()
    }
}
