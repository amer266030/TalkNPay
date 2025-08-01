//
//  Bill.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

struct Bill: Identifiable, Codable, Equatable, Hashable {
    let id: UUID
    let provider: BillProvider
    let accountNumber: String
    let description: String
    let amount: Double
    let dueDate: Date
    var paymentStatus: PaymentStatus
}
