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
            Image(.welcomeBG)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Talk N Pay")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .opacity(animate ? 1 : 0)
                        .offset(x: animate ? 0 : -200)
                        .animation(.easeOut(duration: 0.7).delay(0.1), value: animate)
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 24)
                        .fill(.darkIndigo.gradient.opacity(0.6))
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
                                            .foregroundStyle(Color.lightPurple)
                                            
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
                        .padding(24)
                    
                    Spacer()
                }
                .padding(.top, 24)
                .padding(.horizontal, 24)
                
                Button {
                    vm.navigateToHome()
                } label: {
                    BottomBtnShape()
                        .fill(
                            .darkIndigo.gradient
                                .shadow(.inner(color: .lightPurple, radius: 4, x: 4, y: 4))
                        )
                        .aspectRatio(3, contentMode: .fit)
                        .overlay {
                            Text("Start")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.lightBlue)
                                .opacity(animate ? 1 : 0)
                                .animation(.easeOut(duration: 1).delay(0.5), value: animate)
                        }
                }
            }
            .ignoresSafeArea(edges: .bottom)
            .onAppear { animate = true }
            .onDisappear { animate = false }
        }
    }
}

#Preview {
    WelcomeView()
}
