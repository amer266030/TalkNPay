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
    
    @MainActor
    func navigateToBills() {
        x.navMgr.push(.bills)
    }
    
}
