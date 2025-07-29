//
//  Payments.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

typealias GetPaymentsRequest = EmptyData
typealias GetPaymentsResponse = Payments

struct Payments {
    var list: [Payment]
}
