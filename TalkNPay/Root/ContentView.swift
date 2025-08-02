//
//  ContentView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var popupMgr = PopupMgr.shared
    
    var body: some View {
        ZStack {
            NavigationCoordinator()
                .foregroundStyle(.white)
                .allowsHitTesting(popupMgr.isPopupVisible ? false : true)
                .overlay {
                    Color.black.opacity(popupMgr.isPopupVisible ? 0.5 : 0)
                        .ignoresSafeArea()
                }
                .blur(radius: popupMgr.isPopupVisible ? 4 : 0)
            if popupMgr.isLoading {
                LoadingView(msg: $popupMgr.loadingMsg)
            } else if popupMgr.isAlertVisible {
                AlertView()
            }
        }
        .preferredColorScheme(.dark)
        .languageModifier()
    }
}

#Preview {
    ContentView()
}
