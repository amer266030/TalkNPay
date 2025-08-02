//
//  MockData_Ext.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

extension MockData {
    func fetchBills() -> Bills {
        let bill1 = Bill(
            id: UUID(),
            provider: .telecom,
            accountNumber: "1234567890",
            description: "Internet Bill - November",
            amount: 120.50,
            dueDate: Calendar.current.date(byAdding: .day, value: 5, to: Date())!,
            paymentStatus: .failed
        )
        
        let bill2 = Bill(
            id: UUID(),
            provider: .water,
            accountNumber: "0987654321",
            description: "Water Bill - November",
            amount: 199.99,
            dueDate: Calendar.current.date(byAdding: .day, value: 10, to: Date())!,
            paymentStatus: .pending
        )
        
        let bill3 = Bill(
            id: UUID(),
            provider: .electricity,
            accountNumber: "0987654333",
            description: "Electric Bill - November",
            amount: 199.99,
            dueDate: Calendar.current.date(byAdding: .day, value: 10, to: Date())!,
            paymentStatus: .completed
        )
        
        return Bills(list: [bill1, bill2, bill3])
    }
    
    func fetchPayments() -> Payments {
        let payment = Payment(
            id: UUID(),
            billId: bills.list[1].id,
            payerId: UUID(),
            date: Date(),
            method: "Face ID",
            status: .completed
        )
        
        return Payments(list: [payment])
    }
    
    func fetchTransactions() -> Transactions {
        let transactions = [
            Transaction(
                id: UUID(),
                paymentId: payments.list[0].id,
                provider: bills.list[1].provider,
                amount: bills.list[1].amount,
                paidAt: Calendar.current.date(byAdding: .day, value: -5, to: Date())!,
                confirmationNumber: "CONF-983472"
            ),
            Transaction(
                id: UUID(),
                paymentId: payments.list[0].id,
                provider: bills.list[0].provider,
                amount: bills.list[0].amount,
                paidAt: Calendar.current.date(byAdding: .day, value: -10, to: Date())!,
                confirmationNumber: "CONF-983472"
            ),
        ]
        
        return Transactions(list: transactions)
    }
}
