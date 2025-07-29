//
//  SplashView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct SplashView: View {
    private let x = DIContainer.shared
    @StateObject var vm = SplashVM()
    
    var body: some View {
        Text("Splash")
            .onAppear {
                if x.navMgr.path.count == 0 {
                    Task {
                        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
                        vm.navigateToNextScreen()
                    }
                }
            }
    }
}
