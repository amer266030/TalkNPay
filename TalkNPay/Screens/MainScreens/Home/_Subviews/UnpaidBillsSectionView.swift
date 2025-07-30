//
//  UnpaidBillsSectionView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct UnpaidBillsSectionView: View {
    @Bindable var vm: HomeVM
    
    var body: some View {
        Section("Unpaid Bills") {
            if let recentTransaction = vm.transactions.first {
                UnpaidBillCardView(transaction: recentTransaction) {
                    vm.navigateToBills()
                }
            } else {
                Button {
                    vm.navigateToBills()
                } label: {
                    HStack {
                        Text("View All Bills")
                        Image(systemName: "arrow.right.circle")
                        Spacer()
                    }
                    .foregroundStyle(.blue)
                    .font(.footnote)
                    .padding(.vertical, 8)
                }
                .padding(.leading, 8)
            }
        }
    }
}
