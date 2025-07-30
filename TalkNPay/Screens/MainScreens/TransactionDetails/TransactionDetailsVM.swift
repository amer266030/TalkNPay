//
//  TransactionDetailsVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Observation

@Observable
class TransactionDetailsVM {
    private let x = DIContainer.shared
    
    var transaction: Transaction
    
    init(transaction: Transaction) {
        self.transaction = transaction
    }
}
