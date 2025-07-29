//
//  CaseIterable_Ext.swift
//  TheLendingHub
//
//  Created by Amer Alyusuf on 24/12/2024.
//

import Foundation

extension CaseIterable where Self: Equatable {
    func next() -> Self {
        let all = Self.allCases
        let idx = all.firstIndex(of: self)!
        let next = all.index(after: idx)
        return all[next == all.endIndex ? all.startIndex : next]
    }
}
