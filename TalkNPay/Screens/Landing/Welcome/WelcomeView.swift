//
//  WelcomeView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct WelcomeView: View {
    @State private var animate: Bool = false
    @Bindable var vm = WelcomeVM()
    
    var body: some View {
        ZStack {
            Image(.welcomeBg1)
                .resizable()
                .ignoresSafeArea()
                .overlay {
                    BGView()
                        .opacity(0.7)
                }
            
            VStack(alignment: .center) {
                LogoViewSmall()
                    .foregroundStyle(.white)
                    .opacity(animate ? 1 : 0)
                    .offset(x: animate ? 0 : -200)
                    .animation(.easeOut(duration: 0.7).delay(0.1), value: animate)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 24)
                    .fill(
                        .bk2.gradient.opacity(1)
                        .shadow(.inner(color: .y3, radius: 1, x: 0, y: 0))
                    )
                    .aspectRatio(1.3, contentMode: .fit)
                    .background(.ultraThinMaterial, in: .rect(cornerRadius: 24))
                    .overlay {
                        TabView(selection: $vm.selectedTab) {
                            ForEach(LandingTabIcons.allCases) { tab in
                                VStack(spacing: 24) {
                                    tab.img
                                        .font(.largeTitle)
                                        .foregroundStyle(.white)
                                    
                                    Text(tab.title)
                                        .font(.headline)
                                        .foregroundStyle(Color.y2)
                                        
                                    Text(tab.description)
                                        .font(.footnote)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal)
                                        .foregroundStyle(Color.white)
                                }
                                .tag(tab)
                            }
                        }
                        .tabViewStyle(.page)
                        .opacity(animate ? 1 : 0)
                        .offset(y: animate ? 0 : -10)
                        .animation(.easeOut(duration: 0.5).delay(0.1), value: animate)
                        .onReceive(vm.timer) { _ in
                            vm.selectedTab = vm.selectedTab.next()
                        }
                    }
                
                Spacer()
                
                PrimaryBtn(title: "Start", backgroundColor: Color.bk2.gradient) {
                    vm.navigateToHome()
                }
            }
            .padding(.top, 24)
            .padding(.horizontal, 24)
            .onAppear { animate = true }
            .onDisappear { animate = false }
            
        }
    }
}

#Preview {
    WelcomeView()
}
