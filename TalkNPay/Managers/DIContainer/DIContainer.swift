//
//  DIContainer.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import Foundation

class DIContainer {
    
    static let shared = DIContainer()
    
    private init() {}
    
    lazy var navMgr = NavigationMgr.shared
    lazy var popupMgr = PopupMgr.shared
    lazy var mockData = MockData.shared
    
//    lazy var nwkMgr = NetworkMgr.shared
}
