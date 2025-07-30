//
//  BillDetailsVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Observation

@Observable
class BillDetailsVM {
    private let x = DIContainer.shared
    
    var bill: Bill
    
    init(bill: Bill) {
        self.bill = bill
    }
    
    func initiatePayment() {
        
    }
    
}
