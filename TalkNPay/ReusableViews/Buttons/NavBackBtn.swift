//
//  NavBackBtn.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct NavBackBtn: View {
    var foregroundColor: Color = .y1
    private let navMgr = NavigationMgr.shared
    
    var body: some View {
        Button {
            navMgr.pop()
        } label: {
            Image(systemName: "chevron.left")
            .foregroundStyle(foregroundColor)
            .font(.subheadline)
            .bold()
        }
    }
}

#Preview {
    NavBackBtn()
}
