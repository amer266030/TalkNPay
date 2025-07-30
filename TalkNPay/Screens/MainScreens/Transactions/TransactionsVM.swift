//
//  TransactionsVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Observation

@Observable
class TransactionsVM {
    private let x = DIContainer.shared
    
    var transactions: [Transaction] = []
    
    @MainActor
    func fetchTrasnactions() async {
        transactions = x.mockData.transactions.list
    }
    
    @MainActor
    func navigateToHome() {
        x.navMgr.pop()
    }
    
    @MainActor
    func navigateToTransactionDetails(transaction: Transaction) {
        x.navMgr.push(.transactionDetails(transaction: transaction))
    }
    
}
