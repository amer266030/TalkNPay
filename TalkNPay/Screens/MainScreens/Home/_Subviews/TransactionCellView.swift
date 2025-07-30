//
//  TransactionCellView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct TransactionCellView: View {
    var transaction: Transaction
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(transaction.provider)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            VStack(alignment: .leading, spacing: 8) {
                CurrencyView(amount: transaction.amount, font: .caption)
                
                Text(transaction.paidAt, style: .date)
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
        }
        .cardWithShadow()
    }
}

#Preview {
    let x = DIContainer.shared
    
    TransactionCellView(transaction: x.mockData.transactions.list.first!)
}
