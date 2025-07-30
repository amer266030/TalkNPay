//
//  TransactionDetailsView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct TransactionDetailsView: View {
    @Bindable var vm: TransactionDetailsVM
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            BGView()
            
            ScrollView(.vertical) {
                VStack(spacing: 16) {
                    Image(systemName: "doc.text.magnifyingglass")
                        .font(.system(size: 48))
                        .foregroundStyle(.darkPurple)
                    
                    Text("Payment Details")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .cardWithShadow()
                
                VStack(alignment: .leading, spacing: 16) {
                    LabeledRow(label: "Provider", value: Text(vm.transaction.provider))
                    LabeledRow(label: "Amount", value: CurrencyView(amount: vm.transaction.amount, font: .callout))
                    LabeledRow(label: "Paid At", value: Text(vm.transaction.paidAt.formatted(.dateTime.month().day().year().hour().minute())))
                    LabeledRow(label: "Confirmation", value: Text(vm.transaction.confirmationNumber).monospaced())
                }
                .cardWithShadow()
            }
            .scrollIndicators(.hidden)
            .padding(24)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                NavBackBtn()
            }
            ToolbarItem(placement: .principal) {
                Text("Transaction")
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
            x.navMgr.push(.transactionDetails(transaction: x.mockData.transactions.list.first!))
        }
}
