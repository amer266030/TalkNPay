//
//  Transactions.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

typealias GetTransactionsRequest = EmptyData
typealias GetTransactionsResponse = Transactions

struct Transactions: Codable {
    var list: [Transaction]
}
