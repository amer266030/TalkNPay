//
//  ConfirmationSummaryCardView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct ConfirmationSummaryCardView: View {
    @Bindable var vm: PaymentConfirmationVM
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 64))
                .foregroundStyle(.green)
            
            Text("Payment Successful")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            Text("Your payment to \(vm.bill.provider) was processed successfully.")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .cardWithShadow()
    }
}
