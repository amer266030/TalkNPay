//
//  WelcomeVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import Observation
import SwiftUI

@Observable
class WelcomeVM {
    private let x = DIContainer.shared
    var selectedTab: LandingTabIcons = .first
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    
    @MainActor
    func navigateToHome() {
        x.navMgr.push(.home)
    }
}
