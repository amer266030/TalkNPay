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
        HStack(spacing: 8) {
            Text(label)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Spacer()
            value
                .fontWeight(.medium)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }
        .font(.footnote)
    }
}


#Preview {
    LabeledRow(label: "", value: Text(""))
}
