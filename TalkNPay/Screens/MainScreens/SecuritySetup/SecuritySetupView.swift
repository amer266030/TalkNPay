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
                        .foregroundStyle(.y4)
                    
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
                        vm.SubmitSecuirtyAnswers()
                    }
                    .padding(.top)
                }
                .padding(24)
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Security Setup")
                    .font(.headline)
                    .foregroundStyle(.white)
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
