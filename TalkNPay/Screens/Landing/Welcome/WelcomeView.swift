//
//  WelcomeView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(.welcomeBG)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Talk N Pay")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 24)
                        .fill(.darkIndigo.gradient.opacity(0.6))
                        .aspectRatio(0.8, contentMode: .fit)
                        .background(.ultraThinMaterial, in: .rect(cornerRadius: 24))
                        .overlay {
                            VStack(alignment: .center, spacing: 16) {
                                Text("Welcome, ")
                                
                                Text("Welcome, ")
                            }
                            .foregroundStyle(.lightBlue)
                        }
                        .padding(24)
                    
                    Spacer()
                }
                .padding(.top, 24)
                .padding(.horizontal, 24)
                
                Button {
                    
                } label: {
                    BottomBtnShape()
                        .fill(
                            .darkIndigo.gradient
                                .shadow(.inner(color: .lightPurple, radius: 4, x: 4, y: 4))
                        )
                        .aspectRatio(3, contentMode: .fit)
                        .overlay {
                            Text("Start")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.lightBlue)
                        }
                }
            }
            .ignoresSafeArea(edges: .bottom)
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
    WelcomeView()
}
