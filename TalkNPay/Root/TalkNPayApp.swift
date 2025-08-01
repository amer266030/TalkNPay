//
//  TalkNPayApp.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 29/07/2025.
//

import SwiftUI

@main
struct TalkNPayApp: App {
    let x = DIContainer.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    print("opening url: \(url.absoluteString)")
                    
                    guard let components = URLComponents(url: url, resolvingAgainstBaseURL: false),
                          components.host == "pay",
                          let providerName = components.queryItems?.first(where: { $0.name == "provider" })?.value?.lowercased(),
                          let provider = BillProvider(rawValue: providerName) else { return }
                    
                    print("components correct")
                    
                    if let bill = x.mockData.bills.list.first(where: { $0.provider.name == provider.name }) {
                        print("found bill")
                        Task {
                            try? await Task.sleep(nanoseconds: 500_000_000)
                            print("Navigating")
                            x.navMgr.push(.billDetails(bill: bill, provider: provider))
                        }
                    }
                }
            
        }
    }
}
