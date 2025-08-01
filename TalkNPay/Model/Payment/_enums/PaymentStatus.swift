//
//  PaymentStatus.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

enum PaymentStatus: String, Codable, Identifiable, CaseIterable {
    case completed, pending, failed
    
    var id: String { self.rawValue }
    
    var strValue: String {
        switch self {
        case .completed: "Completed"
        case .pending: "Pending"
        case .failed: "Failed"
        }
    }
    
    var color: Color {
        switch self {
        case .completed: Color.green
        case .pending: Color.y4
        case .failed: Color.red
        }
    }
}
