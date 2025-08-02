//
//  BillCardView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct BillCardView: View {
    var bill: Bill
    var isPaid: Bool = false
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack(alignment: .leading, spacing: 16) {
                HStack(alignment: .firstTextBaseline) {
                    Text(bill.provider.name)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    StatusChipView(
                        title: bill.paymentStatus.strValue,
                        foregroundColor: bill.paymentStatus.color
                    )
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(bill.description.prefix(30))
                            .fontWidth(.condensed)
                            .font(.footnote)
                        Spacer()
                        CurrencyView(amount: bill.amount, font: .footnote)
                    }
                    if bill.paymentStatus != .completed {
                        HStack {
                            Text("Due: \(bill.dueDate.formatted(.dateTime.month().day()))")
                                .font(.caption)
                            Spacer()
                            HStack {
                                Text("Pay Now")
                                Image(systemName: "arrow.right.circle")
                            }
                            .foregroundStyle(.y1)
                        }
                        .font(.footnote)
                    }
                }
            }
            .cardWithShadow()
        }
    }
}


#Preview {
    let x = DIContainer.shared
    
    BillCardView(bill: x.mockData.bills.list.first!) {}
}
