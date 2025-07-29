//
//  LandingTabItems.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

enum LandingTabIcons: Int, Identifiable, CaseIterable {
    case first = 1, second, third
    
    var id: Int { rawValue }
    
    var title: LocalizedStringKey {
        switch self {
            case .first: "OB 1"
            case .second: "OB 2"
            case .third: "OB 3"
        }
    }
    
    var description: LocalizedStringKey {
        switch self {
            case .first: "ABC 1"
            case .second: "ABC 2"
            case .third: "ABC 3"
        }
    }
    
    var img: Image {
        switch self {
            case .first: Image(systemName: "person")
            case .second: Image(systemName: "person")
            case .third: Image(systemName: "person")
        }
    }
    
}
