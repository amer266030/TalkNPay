//
//  BillProvider.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import AppIntents
import SwiftUI

enum BillProvider: String, Codable, AppEnum {
    case telecom, water, electricity
    
    var name: String {
        switch self {
        case .telecom: "Telecom"
        case .water: "Water"
        case .electricity: "Electricity"
        }
    }
    
    var icon: String {
        switch self {
        case .telecom: "antenna.radiowaves.left.and.right"
        case .water: "drop.fill"
        case .electricity: "bolt.fill"
        }
    }

    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Bill Provider"

    static var caseDisplayRepresentations: [Self: DisplayRepresentation] = [
        .telecom: "Telecom",
        .water: "Water",
        .electricity: "Electricity"
    ]
    
    static var caseSynonyms: [Self: [String]] {
        [
            .water: ["Water", "Water bill", "Water service"],
            .electricity: ["Electric", "Electricity bill", "Power"],
            .telecom: ["Telecom", "Telecom bill", "Phone"]
        ]
    }
}
