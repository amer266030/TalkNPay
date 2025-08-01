//
//  SecuritySetupVM.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 31/07/2025.
//

import Observation
import SwiftUI

@Observable
class SecuritySetupVM {
    private let x = DIContainer.shared
    var answers: [String: String] = [
        "Q1": "", "Q2": "", "Q3": "", "Q4": "", "Q5": ""
    ]
    
    let securityQuestions = SecurityQuestions.sampleQuestions

}
