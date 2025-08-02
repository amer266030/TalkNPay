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
    
    init() {
        answers = [
            "Q1": x.storage.q1,
            "Q2": x.storage.q2,
            "Q3": x.storage.q3,
            "Q4": x.storage.q4,
            "Q5": x.storage.q5
        ]
    }
    
    @MainActor
    func SubmitSecuirtyAnswers() {
        if answers.values.contains("") {
            x.popupMgr.showAppAlert(for: GenericAlert.missingSecurityAnswer)
        } else {
            x.storage.storeAnswers(with: answers)
            x.navMgr.replaceWith(.home)
        }
    }
}
