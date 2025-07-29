//
//  OnboardingVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

class OnboardingVM: ObservableObject {
    private let x = DIContainer.shared
    @Published var currentTab: LandingTabIcons = .first
    
    var nextBtnText: LocalizedStringKey {
        currentTab == LandingTabIcons.allCases.last ? "Register" : "Next"
    }
    
    @MainActor
    func nextPage() {
        if currentTab.id == LandingTabIcons.allCases.count {
            x.navMgr.replaceWith(.home)
        } else {
            currentTab = LandingTabIcons.allCases[currentTab.id]
        }
    }
    
    @MainActor
    func previousPage() {
        if currentTab == .first {
            x.navMgr.pop()
        } else {
            currentTab = LandingTabIcons.allCases[currentTab.id - 2]
        }
    }
    
}

