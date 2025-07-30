//
//  ConfirmationDetailCardView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct ConfirmationDetailCardView: View {
    @Bindable var vm: PaymentConfirmationVM
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            LabeledRow(label: "Bill", value: Text(vm.bill.description))
            LabeledRow(label: "Amount", value: CurrencyView(amount: vm.bill.amount, font: .callout))
            LabeledRow(label: "Due Date", value: Text(vm.bill.dueDate.formatted(.dateTime.month().day().year())))
            LabeledRow(label: "Status", value: Text("Paid").foregroundStyle(.green))
        }
        .cardWithShadow()
    }
}
