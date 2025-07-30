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
                "Use \(.applicationName) to pay my \(\.$provider) bill",
                "Make a payment to \(\.$provider) with \(.applicationName)"
            ],
            shortTitle: "Pay Bill",
            systemImageName: "creditcard"
        )
    }
}



