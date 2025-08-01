//
//  ShapeN.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct ShapeN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.87227*width, y: 0.02125*height))
        path.addCurve(to: CGPoint(x: 0.95746*width, y: 0.26642*height), control1: CGPoint(x: 0.97833*width, y: 0.0815*height), control2: CGPoint(x: 0.9417*width, y: 0.18317*height))
        path.addCurve(to: CGPoint(x: 0.97592*width, y: 0.48738*height), control1: CGPoint(x: 0.96478*width, y: 0.33911*height), control2: CGPoint(x: 0.9697*width, y: 0.41373*height))
        path.addCurve(to: CGPoint(x: 0.99488*width, y: 0.71553*height), control1: CGPoint(x: 0.98405*width, y: 0.56255*height), control2: CGPoint(x: 0.98716*width, y: 0.63988*height))
        path.addCurve(to: CGPoint(x: 0.89595*width, y: 0.97036*height), control1: CGPoint(x: 0.99508*width, y: 0.79938*height), control2: CGPoint(x: 1.03381*width, y: 0.92381*height))
        path.addCurve(to: CGPoint(x: 0.55398*width, y: 0.91216*height), control1: CGPoint(x: 0.78035*width, y: 1.0067*height), control2: CGPoint(x: 0.61238*width, y: 0.98569*height))
        path.addCurve(to: CGPoint(x: 0.48455*width, y: 0.83066*height), control1: CGPoint(x: 0.53442*width, y: 0.89061*height), control2: CGPoint(x: 0.50201*width, y: 0.8373*height))
        path.addCurve(to: CGPoint(x: 0.2343*width, y: 0.99982*height), control1: CGPoint(x: 0.42474*width, y: 0.83054*height), control2: CGPoint(x: 0.49288*width, y: 0.99263*height))
        path.addCurve(to: CGPoint(x: 0.04275*width, y: 0.80983*height), control1: CGPoint(x: 0.0597*width, y: 1.00604*height), control2: CGPoint(x: 0.04776*width, y: 0.89036*height))
        path.addCurve(to: CGPoint(x: 0.02629*width, y: 0.56387*height), control1: CGPoint(x: 0.03532*width, y: 0.73165*height), control2: CGPoint(x: 0.0296*width, y: 0.65141*height))
        path.addCurve(to: CGPoint(x: 0.00331*width, y: 0.26147*height), control1: CGPoint(x: 0.02238*width, y: 0.46203*height), control2: CGPoint(x: 0.01375*width, y: 0.36247*height))
        path.addCurve(to: CGPoint(x: 0.05097*width, y: 0.06134*height), control1: CGPoint(x: 0.00231*width, y: 0.1956*height), control2: CGPoint(x: -0.01656*width, y: 0.11694*height))
        path.addCurve(to: CGPoint(x: 0.36936*width, y: 0.04027*height), control1: CGPoint(x: 0.12322*width, y: 0.00423*height), control2: CGPoint(x: 0.27754*width, y: -0.00296*height))
        path.addCurve(to: CGPoint(x: 0.52679*width, y: 0.18679*height), control1: CGPoint(x: 0.4402*width, y: 0.06291*height), control2: CGPoint(x: 0.47652*width, y: 0.17369*height))
        path.addCurve(to: CGPoint(x: 0.54295*width, y: 0.16391*height), control1: CGPoint(x: 0.53823*width, y: 0.18287*height), control2: CGPoint(x: 0.53943*width, y: 0.17182*height))
        path.addCurve(to: CGPoint(x: 0.61248*width, y: 0.03532*height), control1: CGPoint(x: 0.55539*width, y: 0.1301*height), control2: CGPoint(x: 0.5592*width, y: 0.06538*height))
        path.addCurve(to: CGPoint(x: 0.87106*width, y: 0.02071*height), control1: CGPoint(x: 0.67821*width, y: -0.00308*height), control2: CGPoint(x: 0.79641*width, y: -0.01352*height))
        path.addLine(to: CGPoint(x: 0.87217*width, y: 0.02125*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.81186*width, y: 0.09044*height))
        path.addCurve(to: CGPoint(x: 0.65754*width, y: 0.11585*height), control1: CGPoint(x: 0.75888*width, y: 0.06261*height), control2: CGPoint(x: 0.68613*width, y: 0.08108*height))
        path.addCurve(to: CGPoint(x: 0.62222*width, y: 0.3734*height), control1: CGPoint(x: 0.59522*width, y: 0.19349*height), control2: CGPoint(x: 0.65212*width, y: 0.2893*height))
        path.addCurve(to: CGPoint(x: 0.499*width, y: 0.36573*height), control1: CGPoint(x: 0.60596*width, y: 0.44705*height), control2: CGPoint(x: 0.53432*width, y: 0.42091*height))
        path.addCurve(to: CGPoint(x: 0.18262*width, y: 0.09128*height), control1: CGPoint(x: 0.41632*width, y: 0.27493*height), control2: CGPoint(x: 0.40518*width, y: 0.08645*height))
        path.addCurve(to: CGPoint(x: 0.08007*width, y: 0.34189*height), control1: CGPoint(x: 0.02037*width, y: 0.11929*height), control2: CGPoint(x: 0.08118*width, y: 0.26346*height))
        path.addCurve(to: CGPoint(x: 0.11148*width, y: 0.73889*height), control1: CGPoint(x: 0.0897*width, y: 0.47404*height), control2: CGPoint(x: 0.09974*width, y: 0.60734*height))
        path.addCurve(to: CGPoint(x: 0.12543*width, y: 0.83458*height), control1: CGPoint(x: 0.11469*width, y: 0.77167*height), control2: CGPoint(x: 0.11559*width, y: 0.80639*height))
        path.addCurve(to: CGPoint(x: 0.34297*width, y: 0.88602*height), control1: CGPoint(x: 0.14178*width, y: 0.90522*height), control2: CGPoint(x: 0.27012*width, y: 0.95985*height))
        path.addCurve(to: CGPoint(x: 0.36895*width, y: 0.68939*height), control1: CGPoint(x: 0.39354*width, y: 0.83283*height), control2: CGPoint(x: 0.36514*width, y: 0.75072*height))
        path.addCurve(to: CGPoint(x: 0.44652*width, y: 0.58205*height), control1: CGPoint(x: 0.37136*width, y: 0.6589*height), control2: CGPoint(x: 0.37096*width, y: 0.54993*height))
        path.addCurve(to: CGPoint(x: 0.68212*width, y: 0.88553*height), control1: CGPoint(x: 0.56342*width, y: 0.66614*height), control2: CGPoint(x: 0.55188*width, y: 0.80717*height))
        path.addCurve(to: CGPoint(x: 0.90548*width, y: 0.85782*height), control1: CGPoint(x: 0.75216*width, y: 0.92792*height), control2: CGPoint(x: 0.86755*width, y: 0.91536*height))
        path.addCurve(to: CGPoint(x: 0.91421*width, y: 0.55609*height), control1: CGPoint(x: 0.95876*width, y: 0.76334*height), control2: CGPoint(x: 0.91009*width, y: 0.65461*height))
        path.addCurve(to: CGPoint(x: 0.81286*width, y: 0.09086*height), control1: CGPoint(x: 0.88862*width, y: 0.45291*height), control2: CGPoint(x: 0.92936*width, y: 0.13958*height))
        path.addLine(to: CGPoint(x: 0.81186*width, y: 0.09038*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.81286*width, y: 0.09086*height))
        path.addCurve(to: CGPoint(x: 0.91421*width, y: 0.55609*height), control1: CGPoint(x: 0.92856*width, y: 0.13716*height), control2: CGPoint(x: 0.88912*width, y: 0.45484*height))
        path.addCurve(to: CGPoint(x: 0.90548*width, y: 0.85782*height), control1: CGPoint(x: 0.91019*width, y: 0.65455*height), control2: CGPoint(x: 0.95876*width, y: 0.76334*height))
        path.addCurve(to: CGPoint(x: 0.68212*width, y: 0.88553*height), control1: CGPoint(x: 0.86725*width, y: 0.91506*height), control2: CGPoint(x: 0.75236*width, y: 0.92822*height))
        path.addCurve(to: CGPoint(x: 0.44652*width, y: 0.58205*height), control1: CGPoint(x: 0.55188*width, y: 0.80717*height), control2: CGPoint(x: 0.56342*width, y: 0.6662*height))
        path.addCurve(to: CGPoint(x: 0.36895*width, y: 0.68939*height), control1: CGPoint(x: 0.37066*width, y: 0.55029*height), control2: CGPoint(x: 0.37156*width, y: 0.65842*height))
        path.addCurve(to: CGPoint(x: 0.34297*width, y: 0.88602*height), control1: CGPoint(x: 0.36514*width, y: 0.75072*height), control2: CGPoint(x: 0.39354*width, y: 0.83283*height))
        path.addCurve(to: CGPoint(x: 0.12543*width, y: 0.83458*height), control1: CGPoint(x: 0.27012*width, y: 0.95961*height), control2: CGPoint(x: 0.14158*width, y: 0.9054*height))
        path.addCurve(to: CGPoint(x: 0.0886*width, y: 0.46148*height), control1: CGPoint(x: 0.10024*width, y: 0.71414*height), control2: CGPoint(x: 0.10285*width, y: 0.58392*height))
        path.addCurve(to: CGPoint(x: 0.07686*width, y: 0.16874*height), control1: CGPoint(x: 0.0873*width, y: 0.36507*height), control2: CGPoint(x: 0.06081*width, y: 0.26503*height))
        path.addCurve(to: CGPoint(x: 0.34708*width, y: 0.14199*height), control1: CGPoint(x: 0.10255*width, y: 0.06991*height), control2: CGPoint(x: 0.27112*width, y: 0.07094*height))
        path.addCurve(to: CGPoint(x: 0.54465*width, y: 0.40999*height), control1: CGPoint(x: 0.43267*width, y: 0.21957*height), control2: CGPoint(x: 0.44933*width, y: 0.33597*height))
        path.addCurve(to: CGPoint(x: 0.63095*width, y: 0.27874*height), control1: CGPoint(x: 0.64178*width, y: 0.45514*height), control2: CGPoint(x: 0.62984*width, y: 0.30989*height))
        path.addCurve(to: CGPoint(x: 0.81196*width, y: 0.09044*height), control1: CGPoint(x: 0.617*width, y: 0.20563*height), control2: CGPoint(x: 0.62633*width, y: 0.02898*height))
        path.addLine(to: CGPoint(x: 0.81296*width, y: 0.09092*height))
        path.closeSubpath()
        return path
    }
}
