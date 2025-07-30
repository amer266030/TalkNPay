//
//  SplashVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import Foundation

class SplashVM: ObservableObject {
    private var x = DIContainer.shared
    
    @MainActor
    func navigateToNextScreen() {
        Task { try? await Task.sleep(nanoseconds: 500_000) }
        Task { @MainActor in
            if x.navMgr.path.count == 0 {
                x.navMgr.replaceWith(.welcome)
            }
        }
    }
}
