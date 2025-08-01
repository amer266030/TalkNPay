//
//  AppRoutes.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

/// Enum representing all routes in the app
enum AppRoute: Hashable {
    case splash
    case welcome
    case home
    case bills
    case billDetails(bill: Bill, provider: BillProvider? = nil)
    case paymentConfirmation(bill: Bill)
    case transactions
    case transactionDetails(transaction: Transaction)
    case securitySetup
}
