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
                        HStack(alignment: .firstTextBaseline, spacing: 8) {
                            Image(systemName: vm.bill.provider.icon)
                            Text(vm.bill.provider.name)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            StatusChipView(
                                title: vm.bill.paymentStatus.strValue,
                                foregroundColor: vm.bill.paymentStatus.color
                            )
                        }
                        
                        Divider()
                            .background(.y4)
                            .frame(height: 1)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            LabeledRow(label: "Account Number", value: Text(vm.bill.accountNumber))
                            LabeledRow(label: "Amount", value: CurrencyView(amount: vm.bill.amount, font: .footnote))
                            LabeledRow(label: "Due Date", value: Text(vm.bill.dueDate.formatted(.dateTime.month().day().year())))
                            LabeledRow(label: "Description", value: Text(vm.bill.description))
                        }
                    }
                    .cardWithShadow()
                    
                    PrimaryBtn(title: "Pay Now") {
                        if vm.bill.paymentStatus == .completed {
                            vm.showBillPaidAlert()
                        } else {
                            Task { await vm.initiatePayment() }
                        }
                    }
                }
                .padding(24)
            }
        }
        .onAppear {
            if vm.provider != nil && !hasStartedPayment {
                if vm.bill.paymentStatus == .completed {
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
