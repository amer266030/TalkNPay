//
//  HomeView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("didSetupSecurity") var didSetupSecurity: Bool = false
    @Bindable var vm = HomeVM()
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            BGView()
            
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 16) {
                    LogoViewSmall()
                    Button {
                        vm.navigateToSecurityQuestions()
                    } label: {
                        HStack {
                            Spacer()
                            Text("Setup Security Questions")
                            Image(systemName: "arrow.right.circle")
                        }
                        .font(.footnote)
                        .foregroundStyle(.y1)
                    }
                    .allowsHitTesting(true)
                    .buttonStyle(.plain)
                    Divider()
                        .background(.y4)
                        .frame(height: 1)
                }
                
                List {
                    Group {
                        BillChartView(vm: vm)
                        UnpaidBillsSectionView(vm: vm)
                        RecentTransactionsSectionView(vm: vm)
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                    .onTapGesture { }
                }
                .listStyle(.plain)
                .scrollIndicators(.hidden)
            }
            .padding(24)
            .onAppear { Task {
                if !didSetupSecurity {
                    vm.navigateToSecurityQuestions()
                } else {
                    await vm.fetchTransactions()
                    await vm.fetchBills()
                }
            }}
        }
    }
}

#Preview {
    let x = DIContainer.shared
    ContentView()
        .onAppear {
            x.navMgr.push(.home)
        }
}
