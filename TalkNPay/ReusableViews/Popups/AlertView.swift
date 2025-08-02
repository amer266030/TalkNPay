//
//  AlertView.swift
//  TheLendingHub
//
//  Created by Amer Alyusuf on 01/01/2025.
//

import SwiftUI

struct AlertView: View {
    @ObservedObject var popupMgr = PopupMgr.shared
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            HStack {
                HStack {
                    Image(systemName: "info.square")
                        .foregroundStyle(popupMgr.alertIconColor)
                    
                    Text(popupMgr.alertTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                .font(.subheadline)
                Spacer()
            }
            .padding(.horizontal)
            
            Divider()
                .background(.y4)
                .frame(height: 1)
            
            VStack(alignment: .leading, spacing: 24) {
                Text(popupMgr.alertMsg)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .lineLimit(6)
                    .minimumScaleFactor(0.5)
                
                HStack {
                    if let secondaryTitle = popupMgr.alertSecondaryBtnTitle {
                        SecondaryBtn(
                            title: secondaryTitle) {
                                if let action = popupMgr.alertSecondaryBtnAction {
                                    action()
                                }
                                if popupMgr.alertCanBeDismissed { popupMgr.dismissAppAlert() }
                            }
                    }
                    
                    PrimaryBtn(
                        title: popupMgr.alertPrimaryBtnTitle ?? "OK") {
                            if let action = popupMgr.alertPrimaryBtnAction {
                                action()
                            }
                            if popupMgr.alertCanBeDismissed { popupMgr.dismissAppAlert() }
                        }
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 8)
        }
        .preferredColorScheme(.dark)
        .cardWithShadow()
        .padding(.horizontal, 32)
    }
}

#Preview {
    let popupMgr = PopupMgr.shared
    
    ZStack {
        ContainerRelativeShape()
            .fill(LinearGradient.bg)
            .ignoresSafeArea()
        
        AlertView()
            .onAppear {
                popupMgr.alertTitle = "Error!"
                popupMgr.alertMsg = "Hello World!"
            }
    }
}
