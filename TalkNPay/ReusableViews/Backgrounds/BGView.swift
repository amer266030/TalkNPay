//
//  BGView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct BGView: View {
    var body: some View {
        ContainerRelativeShape()
            .fill(.white.gradient)
            .ignoresSafeArea()
    }
}

#Preview {
    BGView()
}
