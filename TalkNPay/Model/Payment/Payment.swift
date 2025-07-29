//
//  Payment.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

struct Payment: Identifiable, Codable {
    let id: UUID
    let billId: UUID
    let payerId: UUID?              // Optional: current user or device ID
    let date: Date
    let method: String              // e.g., "Face ID", "Touch ID", "Siri"
    let status: PaymentStatus
}


