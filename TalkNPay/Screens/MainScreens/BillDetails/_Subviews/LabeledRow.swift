//
//  LabeledRow.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 30/07/2025.
//

import SwiftUI

struct LabeledRow<Content: View>: View {
    var label: String
    var value: Content

    init(label: String, value: Content) {
        self.label = label
        self.value = value
    }

    var body: some View {
        HStack {
            Text(label)
                .font(.caption)
                .foregroundStyle(.gray)
            Spacer()
            value
                .font(.footnote)
                .fontWeight(.medium)
        }
    }
}


#Preview {
    LabeledRow(label: "", value: Text(""))
}
