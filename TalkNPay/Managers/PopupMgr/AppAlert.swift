//
//  AppAlert.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

protocol AppAlert {
    var iconName: String { get }
    var iconColor: Color { get }
    var title: LocalizedStringKey { get }
    var titleColor: Color { get }
    var message: LocalizedStringKey { get }
    var primaryBtnTitle: LocalizedStringKey { get }
    var primaryBtnAction: (() -> Void)? { get }
    var primaryBtnForeground: Color { get }
    var primaryBtnBackground: AnyGradient { get }
    var secondaryBtnTitle: LocalizedStringKey? { get }
    var secondaryBtnAction: (() -> Void)? { get }
}

