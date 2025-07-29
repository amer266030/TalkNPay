//
//  OnboardingView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject var vm = OnboardingVM()
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                vm.currentTab.img
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(maxHeight: .infinity)
            
            VStack {
                Spacer()
                textContentView(vm)
                Spacer()
                buttonsView(vm)
            }
            .frame(maxHeight: .infinity)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 24)
        }
    }
}

@ViewBuilder
fileprivate func textContentView(_ vm: OnboardingVM) -> some View {
    Text(vm.currentTab.title)
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundStyle(.orange)
    
    Text(vm.currentTab.description)
        .padding()
}

fileprivate func buttonsView(_ vm: OnboardingVM) -> some View {
    HStack(spacing: 16) {
        SecondaryBtn(title: "Previous") {
            Task { await vm.previousPage() }
        }
        
        PrimaryBtn(title: vm.nextBtnText) {
            Task { await vm.nextPage() }
        }
    }
    .padding(.vertical)
}

#Preview {
    let x = DIContainer.shared
    NavigationCoordinator()
        .onAppear { x.navMgr.push(.onboarding) }
}

