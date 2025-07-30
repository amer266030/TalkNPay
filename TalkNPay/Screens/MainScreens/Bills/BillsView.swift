//
//  BillsView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct BillsView: View {
    @Bindable var vm = BillsVM()
    
    var body: some View {
        ZStack {
            BGView()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Your Bills")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                if vm.bills.isEmpty {
                    ContentUnavailableView(
                        "No Bills",
                        image: "exclamationmark.triangle.fill",
                        description: Text("You're all caught up! No outstanding or paid bills to show.")
                    )
                } else {
                    List {
                        Group {
                            Section("Outstanding") {
                                ForEach(vm.unpaidBills) { bill in
                                    BillCardView(bill: bill) {
                                        vm.navigateToDetails(for: bill)
                                    }
                                    
                                }
                            }
                            
                            if !vm.paidBills.isEmpty {
                                Section("Paid") {
                                    ForEach(vm.paidBills) { bill in
                                        BillCardView(bill: bill) {
                                            vm.navigateToDetails(for: bill)
                                        }
                                    }
                                }
                            }
                        }
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                    }
                    .listStyle(.plain)
                }
            }
            .padding(24)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                NavBackBtn()
            }
            ToolbarItem(placement: .principal) {
                Text("Bills")
                    .font(.headline)
            }
        }
        .onAppear { Task { await vm.loadBills() } }
    }
}


#Preview {
    let x = DIContainer.shared
    
    ContentView()
        .onAppear {
            x.navMgr.push(.bills)
        }
}
