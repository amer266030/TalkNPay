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
    var didSetupSecrity = false
    
    var transactions: [Transaction] = []
    var bills: [Bill] = []
    
    var unpaidBills: [Bill] { bills.filter( {$0.paymentStatus != .completed }) }
    
    // MARK: - API Calls
    
    @MainActor
    func fetchTransactions() async {
        transactions = x.mockData.transactions.list
    }
    
    @MainActor
    func fetchBills() async {
        bills = x.mockData.bills.list
    }
    
    // MARK: - Navigation
    
    @MainActor
    func navigateToSecurityQuestions() {
        x.navMgr.replaceWith(.securitySetup)
    }
    
    @MainActor
    func navigateToBills() {
        x.navMgr.push(.bills)
    }
    
    @MainActor
    func navigateToBillDetails(bill: Bill) {
        x.navMgr.push(.billDetails(bill: bill))
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

