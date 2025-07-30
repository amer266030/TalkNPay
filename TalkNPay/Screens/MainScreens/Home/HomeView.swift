//
//  HomeView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

struct HomeView: View {
    @Bindable var vm = HomeVM()
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            BGView()
            
            VStack(alignment: .leading, spacing: 24) {
                Text("Welcome back!")
                    .font(.title2)
                    .fontWeight(.medium)
                
                List {
                    Group {
                        UnpaidBillsSectionView(vm: vm)
                        RecentTransactionsSectionView(vm: vm)
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                }
                .listStyle(.plain)
            }
            .padding(24)
            .onAppear { Task { await vm.fetchTransactions() } }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("Home")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
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
