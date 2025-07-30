//
//  PayBillIntent.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import AppIntents
import UIKit

import AppIntents

struct PayBillIntent: ForegroundContinuableIntent {
    static var title: LocalizedStringResource = "Pay Bill"
    static var openAppWhenRun: Bool = false

    @Parameter(title: "Provider")
    var provider: BillProvider
    
    @MainActor
    func perform() async throws -> some IntentResult & ProvidesDialog {
        throw needsToContinueInForegroundError("Please open TalkNPay to complete your payment.") {
            UIApplication.shared.open(URL(string: "talknpay://pay?provider=\(provider.name)")!)
        }
        
        try await requestToContinueInForeground()
        return .result(dialog: "Opening TalkNPay to complete payment for \(provider.name).")
    }
}
