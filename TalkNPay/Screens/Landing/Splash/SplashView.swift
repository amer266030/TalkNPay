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
        ZStack {
            BGView()
            LogoView()
        }
        .onAppear {
            Task {
                try? await Task.sleep(nanoseconds: 4 * 1_000_000_000)
                vm.navigateToNextScreen()
            }
        }
    }
}

#Preview {
    ContentView()
}
