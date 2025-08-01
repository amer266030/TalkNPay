//
//  SecuritySetupView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 31/07/2025.
//

import SwiftUI

struct SecuritySetupView: View {
    @Bindable var vm = SecuritySetupVM()
    
    var body: some View {
        ZStack {
            BGView()
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("You will be prompted to answer a random question when authorizing a voice payment. Please choose an answer for each.")
                        .cardWithShadow()
                    ForEach(vm.securityQuestions) { question in
                        CustomTextField(
                            title: question.question,
                            value: Binding(
                                get: { vm.answers[question.id] ?? "" },
                                set: { vm.answers[question.id] = $0 }
                            )
                        )
                    }
                    
                    PrimaryBtn(title: "Submit") {
                        
                    }
                }
                .padding(24)
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                NavBackBtn()
            }
            ToolbarItem(placement: .principal) {
                Text("Security Setup")
                    .font(.headline)
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    let x = DIContainer.shared
    
    ContentView()
        .onAppear {
            x.navMgr.push(.securitySetup)
        }
}
