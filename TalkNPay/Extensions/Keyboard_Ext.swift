//
//  Keyboard_Ext.swift
//  TheLendingHub
//
//  Created by Amer Alyusuf on 26/12/2024.
//

import SwiftUI

extension View {
    func dismissKeyboardOnTap(using focusedField: FocusState<FocusField?>.Binding) -> some View {
        self.onTapGesture { focusedField.wrappedValue = nil }
    }
    
    func dismissKeyboard(using focusedField: FocusState<FocusField?>.Binding) {
        focusedField.wrappedValue = nil
    }
}
