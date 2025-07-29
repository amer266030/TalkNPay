//
//  Transaction.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

struct Transaction: Identifiable, Codable {
    let id: UUID
    let paymentId: UUID
    let provider: String
    let amount: Double
    let paidAt: Date
    let confirmationNumber: String
}
