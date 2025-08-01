//
//  BillDetailsVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Observation
import LocalAuthentication

@Observable
class BillDetailsVM {
    private let x = DIContainer.shared
    
    var bill: Bill
    var provider: BillProvider?
    
    init(bill: Bill, provider: BillProvider?) {
        self.bill = bill
        self.provider = provider
    }

    @MainActor
    func initiatePayment() async {
        let context = LAContext()
        let reason = "Authorize payment for \(bill.provider)"

        let result = await performBiometricAuthentication(reason: reason, context: context)

        if result {
            completePayment()
        }
    }

    private func performBiometricAuthentication(reason: String, context: LAContext) async -> Bool {
        await withCheckedContinuation { continuation in
            var error: NSError?
            
            let policy: LAPolicy = context.biometryType == .none
                ? .deviceOwnerAuthentication
                : .deviceOwnerAuthenticationWithBiometrics

            guard context.canEvaluatePolicy(policy, error: &error) else {
                continuation.resume(returning: false)
                return
            }

            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason) { success, _ in
                continuation.resume(returning: success)
            }
        }
    }
    
    @MainActor
    func completePayment() {
        bill.paymentStatus = .completed
        
        let transaction = Transaction(
            id: UUID(),
            paymentId: UUID(),
            provider: bill.provider,
            amount: bill.amount,
            paidAt: Date(),
            confirmationNumber: "CONF-\(Int.random(in: 1000...9999))"
        )
        
        x.mockData.transactions.list.insert(transaction, at: 0)
        x.navMgr.push(.paymentConfirmation(bill: bill))
    }
    
    @MainActor
    func showBillPaidAlert() {
        x.popupMgr.showAppAlert(for: GenericAlert.billAlreadyPaid)
    }
    
}
