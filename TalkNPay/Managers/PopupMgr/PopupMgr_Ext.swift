//
//  PopupMgr_Ext.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

extension PopupMgr {
    @MainActor
    func showAppAlert(for alert: AppAlert, canDismissAlert: Bool = true) {
        showAppAlert(
            iconName: alert.iconName,
            iconColor: alert.iconColor,
            title: alert.title,
            titleColor: alert.titleColor,
            msg: alert.message,
            secondaryBtnTitle: alert.secondaryBtnTitle,
            secondaryBtnAction: alert.secondaryBtnAction,
            primaryBtnTitle: alert.primaryBtnTitle,
            primaryBtnAction: alert.primaryBtnAction,
            primaryBtnForegroundColor: alert.primaryBtnForeground,
            primaryBtnBackgroundColor: alert.primaryBtnBackground,
            canDismissAlert: canDismissAlert
        )
    }
    
    @MainActor
    private func showAppAlert(
        iconName: String = "info.circle",
        iconColor: Color = .red,
        title: LocalizedStringKey = "Error",
        titleColor: Color = .red,
        msg: LocalizedStringKey,
        secondaryBtnTitle: LocalizedStringKey? = nil,
        secondaryBtnAction: (() -> Void)? = nil,
        primaryBtnTitle: LocalizedStringKey? = "Continue",
        primaryBtnAction: (() -> Void)? = nil,
        primaryBtnForegroundColor: Color = .white,
        primaryBtnBackgroundColor: AnyGradient = Color.white.gradient,
        canDismissAlert: Bool = true
    ) {
        isLoading = false
        alertIconName = iconName
        alertIconColor = iconColor
        alertTitle = title
        alertTitleColor = titleColor
        alertMsg = msg
        alertSecondaryBtnTitle = secondaryBtnTitle
        alertSecondaryBtnAction = secondaryBtnAction
        alertPrimaryBtnTitle = primaryBtnTitle
        alertPrimaryBtnAction = primaryBtnAction
        alertPrimaryBtnForeground = primaryBtnForegroundColor
        alertPrimaryBtnBackground = primaryBtnBackgroundColor
        alertCanBeDismissed = canDismissAlert
        isAlertVisible = true
    }
    
    @MainActor
    func dismissAppAlert() {
        alertIconName = "info.circle"
        alertIconColor = .red
        alertTitle = ""
        alertTitleColor = .red
        alertMsg = ""
        alertSecondaryBtnTitle = nil
        alertSecondaryBtnAction = nil
        alertPrimaryBtnTitle = nil
        alertPrimaryBtnAction = nil
        alertPrimaryBtnForeground = .white
        alertPrimaryBtnBackground = Color.white.gradient
        alertCanBeDismissed = true
        isAlertVisible = false
    }
}
