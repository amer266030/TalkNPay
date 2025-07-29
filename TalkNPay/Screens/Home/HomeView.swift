//
//  HomeView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            BGView()
            VStack(alignment: .leading, spacing: 16) {
                Text("Home")
            }
            .padding(24)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("Talk N Pay")
                    .font(.title)
                    .font(.headline)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    let x = DIContainer.shared
    ContentView()
        .onAppear {
            x.navMgr.push(.home)
        }
}
