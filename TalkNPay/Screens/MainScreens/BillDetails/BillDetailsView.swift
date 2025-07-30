//
//  BillDetailsView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct BillDetailsView: View {
    @Bindable var vm: BillDetailsVM
    @State private var hasStartedPayment = false
    
    var body: some View {
        ZStack {
            BGView()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text(vm.bill.provider)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            StatusChipView(
                                title: vm.bill.isPaid ? "Paid" : "Unpaid",
                                foregroundColor: vm.bill.isPaid ? .darkPurple : .red
                            )
                        }
                        
                        Text(vm.bill.description)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .cardWithShadow()
                    
                    VStack(alignment: .leading, spacing: 12) {
                        LabeledRow(label: "Account Number", value: Text(vm.bill.accountNumber))
                        LabeledRow(label: "Amount", value: CurrencyView(amount: vm.bill.amount, font: .footnote))
                        LabeledRow(label: "Due Date", value: Text(vm.bill.dueDate.formatted(.dateTime.month().day().year())))
                    }
                    .cardWithShadow()
                    
                    if !vm.bill.isPaid {
                        PrimaryBtn(title: "Pay Now") {
                            if vm.bill.isPaid == true {
                                vm.showBillPaidAlert()
                            } else {
                                Task { await vm.initiatePayment() }
                            }
                        }
                    }
                }
                .padding(24)
            }
        }
        .onAppear {
            if vm.provider != nil && !hasStartedPayment {
                if vm.bill.isPaid == true {
                    vm.showBillPaidAlert()
                } else {
                    hasStartedPayment = true
                    Task { await vm.initiatePayment() }
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                NavBackBtn()
            }
            ToolbarItem(placement: .principal) {
                Text("Bill Details")
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
            x.navMgr.push(.billDetails(bill: x.mockData.bills.list.first!))
        }
}
