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
        VStack(alignment: .leading, spacing: 4) {
            
            HStack {
                Spacer()
                if popupMgr.alertCanBeDismissed {
                    Button {
                        popupMgr.dismissAppAlert()
                    } label: {
                        Image(systemName: "x.circle.fill")
                            .font(.title3)
                            .foregroundStyle(.blue)
                    }
                }
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 24) {
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "info.square")
                            .foregroundStyle(popupMgr.alertIconColor)
                        
                        Text(popupMgr.alertTitle)
                            .foregroundStyle(.gray)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .font(.caption)
                    
                    Text(popupMgr.alertMsg)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(6)
                        .minimumScaleFactor(0.5)
                        .environment(\.openURL, OpenURLAction { url in
                            if url.absoluteString == "action://view-agreement" {
                                NotificationCenter.default.post(name: Notification.Name("view-agreement"), object: nil)
                            }
                            return .handled
                        })
                }
                
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
            .padding(.horizontal, 24)
            .padding(.bottom, 32)
        }
        .background(Color.white.gradient, in: .rect(cornerRadius: 24))
        .padding(.horizontal, 32)
    }
}

#Preview {
    let popupMgr = PopupMgr.shared
    
    ZStack {
        ContainerRelativeShape()
            .fill(Color.blue.gradient)
            .ignoresSafeArea()
        
        AlertView()
            .onAppear {
                popupMgr.alertTitle = "Error!"
                var link: AttributedString {
                    var result = AttributedString("View Agreement")
                    result.foregroundColor = .blue
                    result.underlineStyle = Text.LineStyle(pattern: .solid, color: .blue)
                    result.link = URL(string: "action://view-agreement")
                    return result
                }
            }
    }
}
