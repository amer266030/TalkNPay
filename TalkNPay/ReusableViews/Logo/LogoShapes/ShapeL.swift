//
//  ShapeL.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct ShapeL: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.23189*width, y: 0.96904*height))
        path.addCurve(to: CGPoint(x: 0.09692*width, y: 0.8358*height), control1: CGPoint(x: 0.11355*width, y: 0.94012*height), control2: CGPoint(x: 0.10552*width, y: 0.88152*height))
        path.addCurve(to: CGPoint(x: 0.05964*width, y: 0.60703*height), control1: CGPoint(x: 0.08258*width, y: 0.762*height), control2: CGPoint(x: 0.07341*width, y: 0.68236*height))
        path.addCurve(to: CGPoint(x: 0.01663*width, y: 0.34103*height), control1: CGPoint(x: 0.04492*width, y: 0.51914*height), control2: CGPoint(x: 0.03135*width, y: 0.42922*height))
        path.addCurve(to: CGPoint(x: 0.03173*width, y: 0.10112*height), control1: CGPoint(x: 0.01223*width, y: 0.26065*height), control2: CGPoint(x: -0.02638*width, y: 0.17922*height))
        path.addCurve(to: CGPoint(x: 0.50526*width, y: 0), control1: CGPoint(x: 0.08067*width, y: 0.02967*height), control2: CGPoint(x: 0.2944*width, y: -0.00055*height))
        path.addCurve(to: CGPoint(x: 0.90767*width, y: 0.18575*height), control1: CGPoint(x: 0.8354*width, y: -0.00191*height), control2: CGPoint(x: 0.91015*width, y: 0.09749*height))
        path.addCurve(to: CGPoint(x: 0.99694*width, y: 0.74317*height), control1: CGPoint(x: 0.93653*width, y: 0.37242*height), control2: CGPoint(x: 0.96655*width, y: 0.5573*height))
        path.addCurve(to: CGPoint(x: 0.86389*width, y: 0.96498*height), control1: CGPoint(x: 0.99599*width, y: 0.81709*height), control2: CGPoint(x: 1.03365*width, y: 0.9091*height))
        path.addCurve(to: CGPoint(x: 0.23418*width, y: 0.9696*height), control1: CGPoint(x: 0.70522*width, y: 1.00782*height), control2: CGPoint(x: 0.39916*width, y: 1.01366*height))
        path.addLine(to: CGPoint(x: 0.23208*width, y: 0.96904*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.61747*width, y: 0.09324*height))
        path.addCurve(to: CGPoint(x: 0.20837*width, y: 0.11349*height), control1: CGPoint(x: 0.4934*width, y: 0.06019*height), control2: CGPoint(x: 0.29191*width, y: 0.06709*height))
        path.addCurve(to: CGPoint(x: 0.14529*width, y: 0.25283*height), control1: CGPoint(x: 0.13382*width, y: 0.15245*height), control2: CGPoint(x: 0.13783*width, y: 0.19689*height))
        path.addCurve(to: CGPoint(x: 0.19633*width, y: 0.57903*height), control1: CGPoint(x: 0.16039*width, y: 0.36152*height), control2: CGPoint(x: 0.1797*width, y: 0.46972*height))
        path.addCurve(to: CGPoint(x: 0.22673*width, y: 0.76539*height), control1: CGPoint(x: 0.20914*width, y: 0.64051*height), control2: CGPoint(x: 0.21526*width, y: 0.70329*height))
        path.addCurve(to: CGPoint(x: 0.3051*width, y: 0.87543*height), control1: CGPoint(x: 0.23437*width, y: 0.80385*height), control2: CGPoint(x: 0.251*width, y: 0.84207*height))
        path.addCurve(to: CGPoint(x: 0.84649*width, y: 0.82823*height), control1: CGPoint(x: 0.45708*width, y: 0.96633*height), control2: CGPoint(x: 0.81571*width, y: 0.92233*height))
        path.addCurve(to: CGPoint(x: 0.83693*width, y: 0.62334*height), control1: CGPoint(x: 0.87842*width, y: 0.76145*height), control2: CGPoint(x: 0.84305*width, y: 0.69067*height))
        path.addCurve(to: CGPoint(x: 0.80635*width, y: 0.43322*height), control1: CGPoint(x: 0.82833*width, y: 0.55964*height), control2: CGPoint(x: 0.81763*width, y: 0.49575*height))
        path.addCurve(to: CGPoint(x: 0.77595*width, y: 0.24286*height), control1: CGPoint(x: 0.79755*width, y: 0.3694*height), control2: CGPoint(x: 0.7878*width, y: 0.30453*height))
        path.addCurve(to: CGPoint(x: 0.61977*width, y: 0.0938*height), control1: CGPoint(x: 0.76601*width, y: 0.19178*height), control2: CGPoint(x: 0.75129*width, y: 0.12451*height))
        path.addLine(to: CGPoint(x: 0.61766*width, y: 0.09324*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.61958*width, y: 0.0938*height))
        path.addCurve(to: CGPoint(x: 0.77576*width, y: 0.24286*height), control1: CGPoint(x: 0.7511*width, y: 0.12457*height), control2: CGPoint(x: 0.76582*width, y: 0.19184*height))
        path.addCurve(to: CGPoint(x: 0.82776*width, y: 0.56025*height), control1: CGPoint(x: 0.79507*width, y: 0.34743*height), control2: CGPoint(x: 0.80902*width, y: 0.4539*height))
        path.addCurve(to: CGPoint(x: 0.8463*width, y: 0.82823*height), control1: CGPoint(x: 0.83024*width, y: 0.64888*height), control2: CGPoint(x: 0.88186*width, y: 0.74021*height))
        path.addCurve(to: CGPoint(x: 0.47085*width, y: 0.92184*height), control1: CGPoint(x: 0.82527*width, y: 0.88792*height), control2: CGPoint(x: 0.65571*width, y: 0.9403*height))
        path.addCurve(to: CGPoint(x: 0.22653*width, y: 0.76539*height), control1: CGPoint(x: 0.27662*width, y: 0.90196*height), control2: CGPoint(x: 0.23781*width, y: 0.82404*height))
        path.addCurve(to: CGPoint(x: 0.18199*width, y: 0.48584*height), control1: CGPoint(x: 0.21239*width, y: 0.67177*height), control2: CGPoint(x: 0.19537*width, y: 0.57915*height))
        path.addCurve(to: CGPoint(x: 0.14854*width, y: 0.27413*height), control1: CGPoint(x: 0.1709*width, y: 0.41322*height), control2: CGPoint(x: 0.15714*width, y: 0.34589*height))
        path.addCurve(to: CGPoint(x: 0.18658*width, y: 0.12635*height), control1: CGPoint(x: 0.13994*width, y: 0.22274*height), control2: CGPoint(x: 0.12866*width, y: 0.16371*height))
        path.addCurve(to: CGPoint(x: 0.61747*width, y: 0.0933*height), control1: CGPoint(x: 0.25502*width, y: 0.07133*height), control2: CGPoint(x: 0.47907*width, y: 0.05576*height))
        path.addLine(to: CGPoint(x: 0.61958*width, y: 0.09386*height))
        path.closeSubpath()
        return path
    }
}
