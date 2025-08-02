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
            if !vm.unpaidBills.isEmpty {
                VStack(spacing: 16) {
                    ForEach(vm.unpaidBills) { bill in
                        UnpaidBillCardView(bill: bill) {
                            vm.navigateToBillDetails(bill: bill)
                        }
                    }
                    HStack {
                        Spacer()
                        BillsNavBtn() {
                            vm.navigateToBills()
                        }
                    }
                }
            } else {
                HStack {
                    Spacer()
                    BillsNavBtn() {
                        vm.navigateToBills()
                    }
                }
            }
        }
    }
}
