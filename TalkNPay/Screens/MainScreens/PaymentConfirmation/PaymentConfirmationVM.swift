//
//  PaymentConfirmationVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Observation

@Observable
class PaymentConfirmationVM {
    private let x = DIContainer.shared
    
    var bill: Bill
    
    init(bill: Bill) {
        self.bill = bill
    }
    
    @MainActor
    func navigateToHome() {
        x.navMgr.replaceWith(.home)
    }
}
