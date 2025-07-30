//
//  HomeVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import Observation

@Observable
class HomeVM {
    private let x = DIContainer.shared
    var transactions: [Transaction] = []
    
    @MainActor
    func fetchTransactions() async {
        transactions = x.mockData.transactions.list
    }
    
    @MainActor
    func navigateToBills() {
        x.navMgr.push(.bills)
    }
    
    @MainActor
    func navigateToTransactions() {
        x.navMgr.push(.transactions)
    }
    
    @MainActor
    func navigateToTransactionDetails(transaction: Transaction) {
        x.navMgr.push(.transactionDetails(transaction: transaction))
    }
    
}

