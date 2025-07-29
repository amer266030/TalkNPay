//
//  LandingTabItems.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

enum LandingTabIcons: Int, Identifiable, CaseIterable {
    case first = 1, second, third
    
    var id: Int { rawValue }
    
    var title: LocalizedStringKey {
        switch self {
        case .first: "Voice-Activated Payments"
        case .second: "Secure with Face ID"
        case .third: "Track and Confirm"
        }
    }
    
    var description: LocalizedStringKey {
        switch self {
        case .first:
            "Ask Siri to check or pay your bills using simple voice commands."
        case .second:
            "Authorize each transaction with Face ID or Touch ID for full security."
        case .third:
            "Get instant confirmation and keep a record of all your payments."
        }
    }
    
    var img: Image {
        switch self {
        case .first: Image(systemName: "waveform")
        case .second: Image(systemName: "faceid")
        case .third: Image(systemName: "checkmark.seal")
        }
    }
}
