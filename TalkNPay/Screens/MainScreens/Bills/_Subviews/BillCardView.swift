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
        VStack(alignment: .leading, spacing: 16) {
            HStack {
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
                Text(bill.description)
                    .font(.footnote)
                
                HStack {
                    CurrencyView(amount: bill.amount, font: .caption)
                    Spacer()
                    Text("Due: \(bill.dueDate.formatted(.dateTime.month().day()))")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
            }
            
            if bill.paymentStatus != .completed {
                Button {
                    action()
                } label: {
                    Label("Pay Now", systemImage: "creditcard")
                        .font(.caption)
                        .padding(.horizontal)
                        .padding(.vertical, 6)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue.opacity(0.8))
                        )
                        .foregroundStyle(.white)
                }
            }
        }
        .cardWithShadow()
    }
}


#Preview {
    let x = DIContainer.shared
    
    BillCardView(bill: x.mockData.bills.list.first!) {}
}
