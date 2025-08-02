//
//  GenericAlert.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 03/04/2025.
//

import SwiftUI

enum GenericAlert: AppAlert {
    case missingSecurityAnswer
    case paymentedSuccess
    case paymentFailed
    case billAlreadyPaid
    
    var iconName: String { "info.rectangle" }
    var iconColor: Color {
        switch self {
        case .paymentedSuccess: .green
        default: .red
        }
    }

    var title: LocalizedStringKey {
        switch self {
        case .missingSecurityAnswer: "Error"
        case .paymentedSuccess, .paymentFailed: "Payment"
        case .billAlreadyPaid: "Payment Status"
        }
    }
    var titleColor: Color { .red }

    var message: LocalizedStringKey {
        switch self {
        case .missingSecurityAnswer: "You must provide an answer to all Questions to proceed"
        case .paymentedSuccess: "Payment Successful"
        case .paymentFailed: "Payment Failed"
        case .billAlreadyPaid: "This bill is already paid"
        }
    }
    
    var primaryBtnTitle: LocalizedStringKey {
        switch self {
        default: "OK"
        }
    }
    
    var primaryBtnAction: (() -> Void)? {
        switch self {
        default: return nil
        }
    }
    var primaryBtnForeground: Color { .white }
    var primaryBtnBackground: AnyGradient { Color.blue.gradient }
    var secondaryBtnTitle: LocalizedStringKey? { nil }
    var secondaryBtnAction: (() -> Void)? { nil }
}
