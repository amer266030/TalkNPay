//
//  CustomTextField.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 31/07/2025.
//

import SwiftUI

struct CustomTextField: View {
    var title: String
    @Binding var value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
            
            TextField("", text: $value)
                .cardWithShadow()
                
        }
    }
}

//#Preview {
//    CustomTextField(title: "", value: .constant("abc"))
//}
