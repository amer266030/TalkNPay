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
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("You have 1 unpaid bill")
                        .font(.headline)
                    
                    HStack(spacing: 4) {
                        Text("Last payment:")
                        CurrencyView(amount: 199.99, font: .subheadline)
                            .foregroundStyle(.darkPurple)
                        Text("to TelecomPay")
                        Spacer()
                    }
                    .fontWidth(.condensed)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    
                    Button {
                        vm.navigateToBills()
                    } label: {
                        Label("View Bills", systemImage: "doc.plaintext")
                            .font(.callout)
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.blue.opacity(0.8))
                            )
                            .foregroundStyle(.white)
                    }
                }
                .cardWithShadow()
                
                List {
                    Section("Recent Transactions") {
                        ForEach(vm.transactions) { transaction in
                            TransactionCellView(transaction: transaction)
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color.clear)
                        }
                    }
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
