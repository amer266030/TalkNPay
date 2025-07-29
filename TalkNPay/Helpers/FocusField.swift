//
//  FocusField.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 04/05/2025.
//

import Foundation

enum FocusField: Hashable {
    // Auth
    case govId
    case phone
    case email
    case dob
    case otp
    case pin
    case pinConfirm
    // Wallet
    case amount
    case iban
    // Payment
    case cardNumber
    case nameOnCard
    case expiryMonth
    case expiryYear
    case cvv
    // Reset Pin
    case currentPin
    case newPin
    case repeatedPin
    // Support
    case subject
    case description
}
