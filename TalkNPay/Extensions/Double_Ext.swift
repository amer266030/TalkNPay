//
//  Double_Ext.swift
//  LendingHub
//
//  Created by Amer Alyusuf on 15/04/2025.
//

import Foundation

extension Double {
    func formattedAmount() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "en_US")
        formatter.groupingSeparator = ","
        formatter.roundingMode = .down // ← prevent rounding up
        formatter.maximumFractionDigits = self.truncatingRemainder(dividingBy: 1) == 0 ? 0 : 2
        formatter.minimumFractionDigits = 0

        return formatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }
}
