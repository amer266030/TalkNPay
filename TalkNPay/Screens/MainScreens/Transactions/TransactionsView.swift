//
//  TransactionsView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct TransactionsView: View {
    @Bindable var vm = TransactionsVM()

    var body: some View {
        ZStack(alignment: .topLeading) {
            BGView()

            VStack(alignment: .leading, spacing: 16) {
                Text("Your Transactions")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                if vm.transactions.isEmpty {
                    ContentUnavailableView(
                        "No Transactions",
                        systemImage: "exclamationmark.triangle.fill",
                        description: Text("You haven’t made any payments yet.")
                    )
                } else {
                    List {
                        ForEach(vm.transactions) { transaction in
                            TransactionCellView(transaction: transaction) {
                                vm.navigateToTransactionDetails(transaction: transaction)
                            }
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)
                        }
                    }
                    .listStyle(.plain)
                }
            }
            .padding(24)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                NavBackBtn()
            }
            ToolbarItem(placement: .principal) {
                Text("Transactions")
                    .font(.headline)
                    .foregroundStyle(.white)
            }
        }
        .onAppear {
            Task { await vm.fetchTrasnactions() }
        }
    }
}


#Preview {
    let x = DIContainer.shared
    
    ContentView()
        .onAppear {
            x.navMgr.push(.transactions)
        }
}
