//
//  HomeVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import Observation

@Observable
class HomeVM {
    private let x = DIContainer.shared
    
    @MainActor
    func navigateToBills() {
        x.navMgr.push(.bills)
    }
    
}

