//
//  LogoViewSmall.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct LogoViewSmall: View {
    var body: some View {
        
        HStack {
            HStack {
                Group {
                    ShapeT()
                    ShapeA()
                    ShapeL()
                        .aspectRatio(0.7, contentMode: .fit)
                    ShapeK()
                }
                .aspectRatio(contentMode: .fit)
            }
            
            
            ShapeN()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 8)
            
            ShapePay()
                .aspectRatio(2, contentMode: .fit)
        }
        .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    LogoViewSmall()
}
