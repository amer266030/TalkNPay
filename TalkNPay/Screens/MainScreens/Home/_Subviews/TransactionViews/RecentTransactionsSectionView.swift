//
//  RecentTransactionsListView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct RecentTransactionsSectionView: View {
    @Bindable var vm: HomeVM
    
    var body: some View {
        Section("Recent Transactions") {
            VStack(spacing: 16) {
                ForEach(vm.transactions.prefix(2)) { transaction in
                    TransactionCellView(transaction: transaction) {
                        vm.navigateToTransactionDetails(transaction: transaction)
                    }
                }
                
                HStack {
                    Spacer()
                    Button {
                        vm.navigateToTransactions()
                    } label: {
                        HStack {
                            Text("View All Transactions")
                            Image(systemName: "arrow.right.circle")
                        }
                        .foregroundStyle(.y1)
                        .font(.footnote)
                        .padding(8)
                    }
                    .allowsHitTesting(true)
                    .buttonStyle(.plain)
                }
            }
        }
    }
}
