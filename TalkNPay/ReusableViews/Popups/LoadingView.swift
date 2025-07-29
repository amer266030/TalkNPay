//
//  LoadingView.swift
//  TheLendingHub
//
//  Created by Amer Alyusuf on 01/01/2025.
//

import SwiftUI

struct LoadingView: View {
    @Binding var msg: String
    
    var body: some View {
        ProgressView(msg)
            .tint(.blue)
            .controlSize(.large)
            .padding(24)
            .background(.white.gradient, in: .rect(cornerRadius: 16))
            .shadow(radius: 1)
            .padding(32)
    }
}

#Preview {
    LoadingView(msg: .constant("Loading with a long message that goes over more than one line"))
}
