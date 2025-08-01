//
//  ShapeT.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct ShapeT: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.94563*width, y: 0.02562*height))
        path.addCurve(to: CGPoint(x: 0.94444*width, y: 0.21042*height), control1: CGPoint(x: 1.03141*width, y: 0.07124*height), control2: CGPoint(x: 1.00379*width, y: 0.16123*height))
        path.addCurve(to: CGPoint(x: 0.79541*width, y: 0.34796*height), control1: CGPoint(x: 0.88639*width, y: 0.25315*height), control2: CGPoint(x: 0.81122*width, y: 0.29178*height))
        path.addCurve(to: CGPoint(x: 0.80873*width, y: 0.65638*height), control1: CGPoint(x: 0.77364*width, y: 0.45024*height), control2: CGPoint(x: 0.80775*width, y: 0.55391*height))
        path.addCurve(to: CGPoint(x: 0.7079*width, y: 0.97565*height), control1: CGPoint(x: 0.80418*width, y: 0.75613*height), control2: CGPoint(x: 0.88693*width, y: 0.91706*height))
        path.addCurve(to: CGPoint(x: 0.38373*width, y: 0.978*height), control1: CGPoint(x: 0.61345*width, y: 1.00012*height), control2: CGPoint(x: 0.47135*width, y: 1.01422*height))
        path.addCurve(to: CGPoint(x: 0.2881*width, y: 0.63245*height), control1: CGPoint(x: 0.26394*width, y: 0.91049*height), control2: CGPoint(x: 0.31344*width, y: 0.72877*height))
        path.addCurve(to: CGPoint(x: 0.18499*width, y: 0.30034*height), control1: CGPoint(x: 0.26232*width, y: 0.53396*height), control2: CGPoint(x: 0.31647*width, y: 0.37098*height))
        path.addCurve(to: CGPoint(x: 0.00542*width, y: 0.18697*height), control1: CGPoint(x: 0.11892*width, y: 0.26412*height), control2: CGPoint(x: 0.02567*width, y: 0.24218*height))
        path.addCurve(to: CGPoint(x: 0.40561*width, y: 0.00862*height), control1: CGPoint(x: -0.0365*width, y: 0.0258*height), control2: CGPoint(x: 0.17275*width, y: 0.01085*height))
        path.addCurve(to: CGPoint(x: 0.94444*width, y: 0.02507*height), control1: CGPoint(x: 0.57143*width, y: 0.01362*height), control2: CGPoint(x: 0.79833*width, y: -0.02284*height))
        path.addLine(to: CGPoint(x: 0.94563*width, y: 0.02562*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.8931*width, y: 0.1021*height))
        path.addCurve(to: CGPoint(x: 0.55009*width, y: 0.07721*height), control1: CGPoint(x: 0.80505*width, y: 0.06859*height), control2: CGPoint(x: 0.66587*width, y: 0.07564*height))
        path.addCurve(to: CGPoint(x: 0.28777*width, y: 0.0842*height), control1: CGPoint(x: 0.4629*width, y: 0.07938*height), control2: CGPoint(x: 0.37463*width, y: 0.08047*height))
        path.addCurve(to: CGPoint(x: 0.0756*width, y: 0.14773*height), control1: CGPoint(x: 0.21748*width, y: 0.08529*height), control2: CGPoint(x: 0.05437*width, y: 0.10566*height))
        path.addCurve(to: CGPoint(x: 0.16658*width, y: 0.19553*height), control1: CGPoint(x: 0.08957*width, y: 0.16786*height), control2: CGPoint(x: 0.13322*width, y: 0.18112*height))
        path.addCurve(to: CGPoint(x: 0.26145*width, y: 0.24622*height), control1: CGPoint(x: 0.20134*width, y: 0.20951*height), control2: CGPoint(x: 0.23589*width, y: 0.22609*height))
        path.addCurve(to: CGPoint(x: 0.33196*width, y: 0.4412*height), control1: CGPoint(x: 0.33153*width, y: 0.29908*height), control2: CGPoint(x: 0.32406*width, y: 0.37701*height))
        path.addCurve(to: CGPoint(x: 0.36586*width, y: 0.75842*height), control1: CGPoint(x: 0.34398*width, y: 0.54698*height), control2: CGPoint(x: 0.35297*width, y: 0.65421*height))
        path.addCurve(to: CGPoint(x: 0.4355*width, y: 0.87897*height), control1: CGPoint(x: 0.37095*width, y: 0.80019*height), control2: CGPoint(x: 0.382*width, y: 0.84859*height))
        path.addCurve(to: CGPoint(x: 0.68732*width, y: 0.89211*height), control1: CGPoint(x: 0.49886*width, y: 0.91755*height), control2: CGPoint(x: 0.61324*width, y: 0.9261*height))
        path.addCurve(to: CGPoint(x: 0.75436*width, y: 0.68019*height), control1: CGPoint(x: 0.79476*width, y: 0.83895*height), control2: CGPoint(x: 0.75653*width, y: 0.75951*height))
        path.addCurve(to: CGPoint(x: 0.73746*width, y: 0.51853*height), control1: CGPoint(x: 0.74959*width, y: 0.62618*height), control2: CGPoint(x: 0.74396*width, y: 0.57224*height))
        path.addCurve(to: CGPoint(x: 0.73995*width, y: 0.30709*height), control1: CGPoint(x: 0.73161*width, y: 0.45018*height), control2: CGPoint(x: 0.7184*width, y: 0.37538*height))
        path.addCurve(to: CGPoint(x: 0.89408*width, y: 0.10247*height), control1: CGPoint(x: 0.76454*width, y: 0.20915*height), control2: CGPoint(x: 0.99372*width, y: 0.15032*height))
        path.addLine(to: CGPoint(x: 0.89321*width, y: 0.10204*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.89397*width, y: 0.10253*height))
        path.addCurve(to: CGPoint(x: 0.73985*width, y: 0.30715*height), control1: CGPoint(x: 0.99393*width, y: 0.14978*height), control2: CGPoint(x: 0.76281*width, y: 0.2109*height))
        path.addCurve(to: CGPoint(x: 0.73736*width, y: 0.51859*height), control1: CGPoint(x: 0.71829*width, y: 0.37538*height), control2: CGPoint(x: 0.73151*width, y: 0.4503*height))
        path.addCurve(to: CGPoint(x: 0.75425*width, y: 0.68025*height), control1: CGPoint(x: 0.74396*width, y: 0.5723*height), control2: CGPoint(x: 0.74949*width, y: 0.62624*height))
        path.addCurve(to: CGPoint(x: 0.68721*width, y: 0.89217*height), control1: CGPoint(x: 0.75653*width, y: 0.75957*height), control2: CGPoint(x: 0.79465*width, y: 0.83901*height))
        path.addCurve(to: CGPoint(x: 0.43539*width, y: 0.87903*height), control1: CGPoint(x: 0.61313*width, y: 0.9261*height), control2: CGPoint(x: 0.49875*width, y: 0.91773*height))
        path.addCurve(to: CGPoint(x: 0.36575*width, y: 0.75848*height), control1: CGPoint(x: 0.38189*width, y: 0.84859*height), control2: CGPoint(x: 0.37074*width, y: 0.80031*height))
        path.addCurve(to: CGPoint(x: 0.33185*width, y: 0.44126*height), control1: CGPoint(x: 0.35286*width, y: 0.65427*height), control2: CGPoint(x: 0.34388*width, y: 0.54704*height))
        path.addCurve(to: CGPoint(x: 0.26135*width, y: 0.24628*height), control1: CGPoint(x: 0.32395*width, y: 0.37713*height), control2: CGPoint(x: 0.33142*width, y: 0.29908*height))
        path.addCurve(to: CGPoint(x: 0.16647*width, y: 0.19559*height), control1: CGPoint(x: 0.23578*width, y: 0.22615*height), control2: CGPoint(x: 0.20123*width, y: 0.20957*height))
        path.addCurve(to: CGPoint(x: 0.07549*width, y: 0.14779*height), control1: CGPoint(x: 0.13311*width, y: 0.18118*height), control2: CGPoint(x: 0.08935*width, y: 0.16786*height))
        path.addCurve(to: CGPoint(x: 0.28766*width, y: 0.08426*height), control1: CGPoint(x: 0.05415*width, y: 0.1056*height), control2: CGPoint(x: 0.21759*width, y: 0.08559*height))
        path.addCurve(to: CGPoint(x: 0.57739*width, y: 0.07667*height), control1: CGPoint(x: 0.38362*width, y: 0.08016*height), control2: CGPoint(x: 0.4811*width, y: 0.07902*height))
        path.addCurve(to: CGPoint(x: 0.89299*width, y: 0.1021*height), control1: CGPoint(x: 0.68721*width, y: 0.07516*height), control2: CGPoint(x: 0.81187*width, y: 0.071*height))
        path.addLine(to: CGPoint(x: 0.89386*width, y: 0.10253*height))
        path.closeSubpath()
        return path
    }
}
