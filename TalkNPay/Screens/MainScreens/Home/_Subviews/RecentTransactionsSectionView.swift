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
            ForEach(vm.transactions.prefix(2)) { transaction in
                TransactionCellView(transaction: transaction) {
                    vm.navigateToTransactionDetails(transaction: transaction)
                }
            }
            
            Button {
                vm.navigateToTransactions()
            } label: {
                HStack {
                    Text("View All Transactions")
                    Image(systemName: "arrow.right.circle")
                    Spacer()
                }
                .foregroundStyle(.blue)
                .font(.footnote)
                .padding(.vertical, 8)
            }
            .padding(.leading, 8)
        }
    }
}
