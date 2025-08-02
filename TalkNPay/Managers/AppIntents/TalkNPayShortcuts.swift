//
//  TalkNPayShortcuts.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import AppIntents

struct TalkNPayShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: PayBillIntent(),
            phrases: [
                "Pay my \(\.$provider) bill with \(.applicationName)",
                "Pay my \(\.$provider) bill using \(.applicationName)",
                "Use \(.applicationName) to pay my \(\.$provider) bill",
                "Make a payment to \(\.$provider) with \(.applicationName)",
                "Make a payment to \(\.$provider) through \(.applicationName)"
            ],
            shortTitle: "Pay Bill",
            systemImageName: "creditcard"
        )
    }
}



