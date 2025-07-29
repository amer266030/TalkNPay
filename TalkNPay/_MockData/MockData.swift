//
//  MockData.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import Foundation

class MockData {
    static let shared = MockData()
    
    lazy var bills: Bills = fetchBills()
    lazy var payments: Payments = fetchPayments()
    lazy var transactions: Transactions = fetchTransactions()
}
