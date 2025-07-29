//
//  Bill.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

struct Bill: Identifiable, Codable, Equatable {
    let id: UUID
    let provider: String            // e.g., "UtilityPay" or "TelecomPay"
    let accountNumber: String
    let description: String         // e.g., "Water Bill", "Internet Bill"
    let amount: Double
    let dueDate: Date
    var isPaid: Bool
}

