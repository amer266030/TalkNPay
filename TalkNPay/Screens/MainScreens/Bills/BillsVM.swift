//
//  BillsVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Observation

@Observable
class BillsVM {
    private let x = DIContainer.shared
    
    var bills: [Bill] = []
    var unpaidBills: [Bill] { bills.filter { !$0.isPaid } }
    var paidBills: [Bill] { bills.filter { $0.isPaid } }
    
    @MainActor
    func loadBills() async {
        bills = x.mockData.bills.list
    }
    
    @MainActor
    func navigateToDetails(for bill: Bill) {
        x.navMgr.push(.billDetails)
    }
    
}
