//
//  PaymentStatus.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

enum PaymentStatus: String, Codable, Identifiable, CaseIterable {
    case pending, completed, failed
    
    var id: String { self.rawValue }
    
    var color: Color {
        switch self {
        case .pending: Color.darkIndigo
        case .completed: Color.darkPurple
        case .failed: Color.red
        }
    }
}
