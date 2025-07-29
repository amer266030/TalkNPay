//
//  Bills.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import Foundation

typealias GetBillsRequest = EmptyData
typealias GetBillsResponse = Bills

struct Bills {
    var list: [Bill]
}
