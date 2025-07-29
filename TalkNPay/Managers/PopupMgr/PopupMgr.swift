//
//  PopupMgr.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

class PopupMgr: ObservableObject {
    static let shared = PopupMgr()
    
    @Published var isLoading = false
    @Published var isAlertVisible = false
    @Published var isServerAlertVisible = false
    
    var isPopupVisible: Bool {
        isLoading || isAlertVisible || isServerAlertVisible
    }
    
    @Published var loadingMsg: String = ""
    
    @Published var alertIconName: String = "info.circle"
    @Published var alertIconColor: Color = .red
    @Published var alertTitle: LocalizedStringKey = ""
    @Published var alertTitleColor: Color = .red
    @Published var alertHeadline: String?
    @Published var alertMsg: LocalizedStringKey = ""
    @Published var alertAttributedMsg: AttributedString?
    
    @Published var alertSecondaryBtnTitle: LocalizedStringKey?
    @Published var alertSecondaryBtnAction: (() -> Void)?
    
    @Published var alertPrimaryBtnTitle: LocalizedStringKey?
    @Published var alertPrimaryBtnAction: (() -> Void)?
    @Published var alertPrimaryBtnForeground: Color = .white
    @Published var alertPrimaryBtnBackground: AnyGradient = Color.white.gradient
    
    @Published var alertCanBeDismissed: Bool = true
    
    private init() {
        
    }
    
    @MainActor
    func showLoading(_ msg: String = "Loading...") {
        loadingMsg = msg
        if !isLoading {
            isLoading = true
        }
    }
    
    @MainActor
    func dismissLoading() {
        isLoading = false
    }
    
}
