//
//  BillProvider.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import AppIntents

enum BillProvider: String, AppEnum {
    case telecom, water, electricity
    
    var name: String {
        switch self {
        case .telecom: "Telecom"
        case .water: "Water"
        case .electricity: "Electricity"
        }
    }

    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Bill Provider"

    static var caseDisplayRepresentations: [Self: DisplayRepresentation] = [
        .telecom: "Telecom",
        .water: "Water",
        .electricity: "Electricity"
    ]
}
