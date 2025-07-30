//
//  PaymentConfirmationView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct PaymentConfirmationView: View {
    @Bindable var vm: PaymentConfirmationVM
    
    var body: some View {
        ZStack {
            BGView()
            
            VStack(alignment: .center, spacing: 32) {
                ScrollView(.vertical) {
                    VStack {
                        ConfirmationSummaryCardView(vm: vm)
                        ConfirmationDetailCardView(vm: vm)
                        PrimaryBtn(title: "Done") {
                            vm.navigateToHome()
                        }
                    }
                    .padding(24)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                NavBackBtn()
            }
            ToolbarItem(placement: .principal) {
                Text("Payment Confirmation")
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
            x.navMgr.push(.paymentConfirmation(bill: x.mockData.bills.list.first!))
        }
}
