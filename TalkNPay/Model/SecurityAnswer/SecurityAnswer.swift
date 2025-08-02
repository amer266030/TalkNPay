//
//  SecurityAnswer.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 02/08/2025.
//

import AppIntents
import SwiftUI

enum SecurityAnswer: String, CaseIterable, AppEnum {
    case red = "Red"
    case blue = "Blue"
    case green = "Green"
    case black = "Black"
    case white = "White"
    
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Confirmation Color"

    static var caseDisplayRepresentations: [Self: DisplayRepresentation] = [
        .red: "Red",
        .blue: "Blue",
        .green: "Green",
        .black: "Black",
        .white: "White"
    ]
}
