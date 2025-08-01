//
//  ShapeA.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct ShapeA: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.09517*width, y: 0.73031*height))
        path.addCurve(to: CGPoint(x: 0.48286*width, y: 0.90023*height), control1: CGPoint(x: 0.12199*width, y: 0.86305*height), control2: CGPoint(x: 0.29221*width, y: 0.93028*height))
        path.addCurve(to: CGPoint(x: 0.85193*width, y: 0.86291*height), control1: CGPoint(x: 0.60251*width, y: 0.88171*height), control2: CGPoint(x: 0.74633*width, y: 0.90949*height))
        path.addCurve(to: CGPoint(x: 0.90537*width, y: 0.53618*height), control1: CGPoint(x: 0.97594*width, y: 0.78315*height), control2: CGPoint(x: 0.89834*width, y: 0.63958*height))
        path.addCurve(to: CGPoint(x: 0.73898*width, y: 0.15247*height), control1: CGPoint(x: 0.88652*width, y: 0.40279*height), control2: CGPoint(x: 0.90249*width, y: 0.24526*height))
        path.addCurve(to: CGPoint(x: 0.21035*width, y: 0.11679*height), control1: CGPoint(x: 0.59272*width, y: 0.07406*height), control2: CGPoint(x: 0.37801*width, y: 0.09137*height))
        path.addCurve(to: CGPoint(x: 0.30679*width, y: 0.02742*height), control1: CGPoint(x: 0.06749*width, y: 0.12733*height), control2: CGPoint(x: 0.25378*width, y: 0.03632*height))
        path.addCurve(to: CGPoint(x: 0.96647*width, y: 0.30288*height), control1: CGPoint(x: 0.64839*width, y: -0.05227*height), control2: CGPoint(x: 0.95785*width, y: 0.0423*height))
        path.addCurve(to: CGPoint(x: 0.99734*width, y: 0.8189*height), control1: CGPoint(x: 0.98499*width, y: 0.47087*height), control2: CGPoint(x: 1.00798*width, y: 0.64969*height))
        path.addCurve(to: CGPoint(x: 0.55248*width, y: 0.98405*height), control1: CGPoint(x: 0.99085*width, y: 0.9943*height), control2: CGPoint(x: 0.7508*width, y: 0.99252*height))
        path.addCurve(to: CGPoint(x: 0.0478*width, y: 0.88079*height), control1: CGPoint(x: 0.36406*width, y: 0.99793*height), control2: CGPoint(x: 0.12295*width, y: 1.04173*height))
        path.addCurve(to: CGPoint(x: 0.09474*width, y: 0.72924*height), control1: CGPoint(x: -0.00639*width, y: 0.8231*height), control2: CGPoint(x: 0.02076*width, y: 0.51581*height))
        path.addLine(to: CGPoint(x: 0.09517*width, y: 0.73038*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.51331*width, y: 0.1801*height))
        path.addCurve(to: CGPoint(x: 0.54907*width, y: 0.31313*height), control1: CGPoint(x: 0.55163*width, y: 0.19548*height), control2: CGPoint(x: 0.56323*width, y: 0.27019*height))
        path.addCurve(to: CGPoint(x: 0.36119*width, y: 0.50983*height), control1: CGPoint(x: 0.52789*width, y: 0.39702*height), control2: CGPoint(x: 0.45859*width, y: 0.46275*height))
        path.addCurve(to: CGPoint(x: 0.1386*width, y: 0.57171*height), control1: CGPoint(x: 0.31275*width, y: 0.53354*height), control2: CGPoint(x: 0.18203*width, y: 0.59493*height))
        path.addCurve(to: CGPoint(x: 0.07654*width, y: 0.48782*height), control1: CGPoint(x: 0.1139*width, y: 0.55099*height), control2: CGPoint(x: 0.0973*width, y: 0.51439*height))
        path.addCurve(to: CGPoint(x: 0.00671*width, y: 0.27389*height), control1: CGPoint(x: 0.02055*width, y: 0.41782*height), control2: CGPoint(x: -0.01575*width, y: 0.35579*height))
        path.addCurve(to: CGPoint(x: 0.02161*width, y: 0.24042*height), control1: CGPoint(x: 0.01086*width, y: 0.25744*height), control2: CGPoint(x: 0.01629*width, y: 0.24548*height))
        path.addCurve(to: CGPoint(x: 0.06951*width, y: 0.2751*height), control1: CGPoint(x: 0.03332*width, y: 0.22953*height), control2: CGPoint(x: 0.04311*width, y: 0.24975*height))
        path.addCurve(to: CGPoint(x: 0.39163*width, y: 0.25125*height), control1: CGPoint(x: 0.17756*width, y: 0.38919*height), control2: CGPoint(x: 0.29913*width, y: 0.35593*height))
        path.addCurve(to: CGPoint(x: 0.51256*width, y: 0.17975*height), control1: CGPoint(x: 0.41665*width, y: 0.22789*height), control2: CGPoint(x: 0.46093*width, y: 0.15582*height))
        path.addLine(to: CGPoint(x: 0.51331*width, y: 0.1801*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.46306*width, y: 0.27717*height))
        path.addCurve(to: CGPoint(x: 0.46572*width, y: 0.38321*height), control1: CGPoint(x: 0.42474*width, y: 0.27432*height), control2: CGPoint(x: 0.43826*width, y: 0.37167*height))
        path.addCurve(to: CGPoint(x: 0.48041*width, y: 0.37523*height), control1: CGPoint(x: 0.47211*width, y: 0.38549*height), control2: CGPoint(x: 0.47637*width, y: 0.38193*height))
        path.addCurve(to: CGPoint(x: 0.46391*width, y: 0.27738*height), control1: CGPoint(x: 0.49244*width, y: 0.35123*height), control2: CGPoint(x: 0.49265*width, y: 0.29383*height))
        path.addLine(to: CGPoint(x: 0.46306*width, y: 0.27717*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.55504*width, y: 0.50976*height))
        path.addCurve(to: CGPoint(x: 0.47914*width, y: 0.85016*height), control1: CGPoint(x: 0.61805*width, y: 0.55982*height), control2: CGPoint(x: 0.59783*width, y: 0.82951*height))
        path.addCurve(to: CGPoint(x: 0.40238*width, y: 0.7746*height), control1: CGPoint(x: 0.42559*width, y: 0.85486*height), control2: CGPoint(x: 0.40984*width, y: 0.80309*height))
        path.addCurve(to: CGPoint(x: 0.45369*width, y: 0.56146*height), control1: CGPoint(x: 0.38865*width, y: 0.70303*height), control2: CGPoint(x: 0.41037*width, y: 0.62512*height))
        path.addCurve(to: CGPoint(x: 0.55429*width, y: 0.50926*height), control1: CGPoint(x: 0.47296*width, y: 0.53575*height), control2: CGPoint(x: 0.51799*width, y: 0.48426*height))
        path.addLine(to: CGPoint(x: 0.55493*width, y: 0.50976*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48701*width, y: 0.59799*height))
        path.addCurve(to: CGPoint(x: 0.45934*width, y: 0.66351*height), control1: CGPoint(x: 0.45582*width, y: 0.58133*height), control2: CGPoint(x: 0.45689*width, y: 0.64378*height))
        path.addCurve(to: CGPoint(x: 0.51043*width, y: 0.73807*height), control1: CGPoint(x: 0.46008*width, y: 0.68872*height), control2: CGPoint(x: 0.47935*width, y: 0.76698*height))
        path.addCurve(to: CGPoint(x: 0.48776*width, y: 0.59849*height), control1: CGPoint(x: 0.53513*width, y: 0.70161*height), control2: CGPoint(x: 0.52076*width, y: 0.6289*height))
        path.addLine(to: CGPoint(x: 0.48701*width, y: 0.59799*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.46391*width, y: 0.27738*height))
        path.addCurve(to: CGPoint(x: 0.48041*width, y: 0.37523*height), control1: CGPoint(x: 0.49265*width, y: 0.29383*height), control2: CGPoint(x: 0.49244*width, y: 0.35116*height))
        path.addCurve(to: CGPoint(x: 0.46498*width, y: 0.38285*height), control1: CGPoint(x: 0.47615*width, y: 0.38214*height), control2: CGPoint(x: 0.47168*width, y: 0.38577*height))
        path.addCurve(to: CGPoint(x: 0.46306*width, y: 0.27717*height), control1: CGPoint(x: 0.43868*width, y: 0.37074*height), control2: CGPoint(x: 0.42463*width, y: 0.27468*height))
        path.addLine(to: CGPoint(x: 0.46391*width, y: 0.27738*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48776*width, y: 0.59849*height))
        path.addCurve(to: CGPoint(x: 0.51043*width, y: 0.73807*height), control1: CGPoint(x: 0.52076*width, y: 0.62854*height), control2: CGPoint(x: 0.53513*width, y: 0.70189*height))
        path.addCurve(to: CGPoint(x: 0.45934*width, y: 0.66351*height), control1: CGPoint(x: 0.47935*width, y: 0.76698*height), control2: CGPoint(x: 0.46008*width, y: 0.68872*height))
        path.addCurve(to: CGPoint(x: 0.48701*width, y: 0.59799*height), control1: CGPoint(x: 0.45689*width, y: 0.64371*height), control2: CGPoint(x: 0.45582*width, y: 0.58147*height))
        path.addLine(to: CGPoint(x: 0.48776*width, y: 0.59849*height))
        path.closeSubpath()
        return path
    }
}
