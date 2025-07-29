//
//  Modifiers_Ext.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 17/05/2025.
//

import SwiftUI

extension View {
    @ViewBuilder
    func modifiers<Content: View>(@ViewBuilder content: @escaping (Self) -> Content) -> some View {
        content(self)
    }
}
