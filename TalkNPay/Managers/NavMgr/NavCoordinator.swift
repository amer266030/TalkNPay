//
//  NavCoordinator.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct NavigationCoordinator: View {
    @ObservedObject var navMgr = NavigationMgr.shared

    var body: some View {
        NavigationStack(path: $navMgr.path) {
            SplashView()
                .navigationDestination(for: AppRoute.self) { route in
                    destinationView(for: route)
                        .navigationBarBackButtonHidden()
                }
        }
    }

    /// Returns the correct view for a given route
    @ViewBuilder
    func destinationView(for route: AppRoute) -> some View {
        switch route {
        // Landing Screens
        case .splash: SplashView()
        case .welcome: WelcomeView()
        case .onboarding: OnboardingView()
        case .home: HomeView()
        }
    }
}
