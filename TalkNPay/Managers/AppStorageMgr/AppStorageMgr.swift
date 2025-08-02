//
//  AppStorageMgr.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 31/07/2025.
//

import SwiftUI

struct AppStorageMgr {
    static let shared = AppStorageMgr()
    @AppStorage("didSetupSecurity") var didSetupSecurity: Bool = false
    
    @AppStorage("Q1") var q1: String = ""
    @AppStorage("Q2") var q2: String = ""
    @AppStorage("Q3") var q3: String = ""
    @AppStorage("Q4") var q4: String = ""
    @AppStorage("Q5") var q5: String = ""
    
    private init() {}
    
    func storeAnswers(with answers: [String: String]) {
        q1 = answers["Q1"] ?? ""
        q2 = answers["Q2"] ?? ""
        q3 = answers["Q3"] ?? ""
        q4 = answers["Q4"] ?? ""
        q5 = answers["Q5"] ?? ""
        didSetupSecurity = true
    }
}
