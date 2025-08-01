//
//  ShapeK.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI

struct ShapeK: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.39615*width, y: 0.02073*height))
        path.addCurve(to: CGPoint(x: 0.48837*width, y: 0.20489*height), control1: CGPoint(x: 0.48765*width, y: 0.06218*height), control2: CGPoint(x: 0.45208*width, y: 0.15179*height))
        path.addCurve(to: CGPoint(x: 0.62276*width, y: 0.18209*height), control1: CGPoint(x: 0.50884*width, y: 0.24573*height), control2: CGPoint(x: 0.58121*width, y: 0.18971*height))
        path.addCurve(to: CGPoint(x: 0.87139*width, y: 0.19343*height), control1: CGPoint(x: 0.69317*width, y: 0.1546*height), control2: CGPoint(x: 0.83118*width, y: 0.14545*height))
        path.addCurve(to: CGPoint(x: 0.88359*width, y: 0.61436*height), control1: CGPoint(x: 0.91709*width, y: 0.32858*height), control2: CGPoint(x: 0.73018*width, y: 0.37948*height))
        path.addCurve(to: CGPoint(x: 0.69968*width, y: 0.98366*height), control1: CGPoint(x: 0.96568*width, y: 0.77085*height), control2: CGPoint(x: 1.17327*width, y: 1.01177*height))
        path.addCurve(to: CGPoint(x: 0.42324*width, y: 0.97988*height), control1: CGPoint(x: 0.6023*width, y: 0.97037*height), control2: CGPoint(x: 0.5168*width, y: 0.95684*height))
        path.addCurve(to: CGPoint(x: 0.05334*width, y: 0.85174*height), control1: CGPoint(x: 0.21762*width, y: 1.0267*height), control2: CGPoint(x: 0.05562*width, y: 0.99506*height))
        path.addCurve(to: CGPoint(x: 0.03019*width, y: 0.57748*height), control1: CGPoint(x: 0.04652*width, y: 0.76079*height), control2: CGPoint(x: 0.0367*width, y: 0.66911*height))
        path.addCurve(to: CGPoint(x: 0.00848*width, y: 0.11064*height), control1: CGPoint(x: 0.02409*width, y: 0.42356*height), control2: CGPoint(x: -0.01757*width, y: 0.26408*height))
        path.addCurve(to: CGPoint(x: 0.08818*width, y: 0.02658*height), control1: CGPoint(x: 0.01695*width, y: 0.07779*height), control2: CGPoint(x: 0.03939*width, y: 0.0442*height))
        path.addCurve(to: CGPoint(x: 0.39502*width, y: 0.02024*height), control1: CGPoint(x: 0.17482*width, y: -0.0036*height), control2: CGPoint(x: 0.31097*width, y: -0.01122*height))
        path.addLine(to: CGPoint(x: 0.39615*width, y: 0.02073*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.72811*width, y: 0.89064*height))
        path.addCurve(to: CGPoint(x: 0.88411*width, y: 0.85467*height), control1: CGPoint(x: 0.79076*width, y: 0.91191*height), control2: CGPoint(x: 0.87284*width, y: 0.89673*height))
        path.addCurve(to: CGPoint(x: 0.76646*width, y: 0.57657*height), control1: CGPoint(x: 0.89011*width, y: 0.76317*height), control2: CGPoint(x: 0.78104*width, y: 0.66929*height))
        path.addCurve(to: CGPoint(x: 0.78611*width, y: 0.40905*height), control1: CGPoint(x: 0.75199*width, y: 0.5206*height), control2: CGPoint(x: 0.76305*width, y: 0.46373*height))
        path.addCurve(to: CGPoint(x: 0.81919*width, y: 0.28645*height), control1: CGPoint(x: 0.80347*width, y: 0.36442*height), control2: CGPoint(x: 0.83118*width, y: 0.31882*height))
        path.addCurve(to: CGPoint(x: 0.64571*width, y: 0.24604*height), control1: CGPoint(x: 0.80523*width, y: 0.23958*height), control2: CGPoint(x: 0.7124*width, y: 0.22696*height))
        path.addCurve(to: CGPoint(x: 0.48703*width, y: 0.354*height), control1: CGPoint(x: 0.56735*width, y: 0.26329*height), control2: CGPoint(x: 0.52197*width, y: 0.31444*height))
        path.addCurve(to: CGPoint(x: 0.36121*width, y: 0.13137*height), control1: CGPoint(x: 0.3732*width, y: 0.46489*height), control2: CGPoint(x: 0.41724*width, y: 0.15588*height))
        path.addCurve(to: CGPoint(x: 0.08477*width, y: 0.14649*height), control1: CGPoint(x: 0.30084*width, y: 0.05566*height), control2: CGPoint(x: 0.12426*width, y: 0.06834*height))
        path.addCurve(to: CGPoint(x: 0.08177*width, y: 0.36912*height), control1: CGPoint(x: 0.05262*width, y: 0.21647*height), control2: CGPoint(x: 0.07909*width, y: 0.29724*height))
        path.addCurve(to: CGPoint(x: 0.10224*width, y: 0.61003*height), control1: CGPoint(x: 0.08674*width, y: 0.45056*height), control2: CGPoint(x: 0.09687*width, y: 0.52981*height))
        path.addCurve(to: CGPoint(x: 0.14504*width, y: 0.85558*height), control1: CGPoint(x: 0.1163*width, y: 0.6927*height), control2: CGPoint(x: 0.09976*width, y: 0.77774*height))
        path.addCurve(to: CGPoint(x: 0.42035*width, y: 0.86387*height), control1: CGPoint(x: 0.19436*width, y: 0.92404*height), control2: CGPoint(x: 0.36545*width, y: 0.93483*height))
        path.addCurve(to: CGPoint(x: 0.526*width, y: 0.6688*height), control1: CGPoint(x: 0.45953*width, y: 0.84345*height), control2: CGPoint(x: 0.42004*width, y: 0.61729*height))
        path.addCurve(to: CGPoint(x: 0.55453*width, y: 0.69678*height), control1: CGPoint(x: 0.53572*width, y: 0.67538*height), control2: CGPoint(x: 0.54544*width, y: 0.68514*height))
        path.addCurve(to: CGPoint(x: 0.72666*width, y: 0.89027*height), control1: CGPoint(x: 0.60488*width, y: 0.76036*height), control2: CGPoint(x: 0.60757*width, y: 0.85449*height))
        path.addLine(to: CGPoint(x: 0.7279*width, y: 0.89064*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.72677*width, y: 0.89027*height))
        path.addCurve(to: CGPoint(x: 0.5871*width, y: 0.75079*height), control1: CGPoint(x: 0.63755*width, y: 0.86327*height), control2: CGPoint(x: 0.61356*width, y: 0.80432*height))
        path.addCurve(to: CGPoint(x: 0.55453*width, y: 0.69678*height), control1: CGPoint(x: 0.57697*width, y: 0.73086*height), control2: CGPoint(x: 0.56642*width, y: 0.71196*height))
        path.addCurve(to: CGPoint(x: 0.45477*width, y: 0.70617*height), control1: CGPoint(x: 0.5139*width, y: 0.64082*height), control2: CGPoint(x: 0.46935*width, y: 0.65393*height))
        path.addCurve(to: CGPoint(x: 0.42035*width, y: 0.86387*height), control1: CGPoint(x: 0.43709*width, y: 0.75604*height), control2: CGPoint(x: 0.45363*width, y: 0.82334*height))
        path.addCurve(to: CGPoint(x: 0.14504*width, y: 0.85558*height), control1: CGPoint(x: 0.36545*width, y: 0.93465*height), control2: CGPoint(x: 0.19415*width, y: 0.92423*height))
        path.addCurve(to: CGPoint(x: 0.10224*width, y: 0.61003*height), control1: CGPoint(x: 0.09976*width, y: 0.77768*height), control2: CGPoint(x: 0.11641*width, y: 0.69276*height))
        path.addCurve(to: CGPoint(x: 0.08177*width, y: 0.36912*height), control1: CGPoint(x: 0.09687*width, y: 0.52981*height), control2: CGPoint(x: 0.08674*width, y: 0.45056*height))
        path.addCurve(to: CGPoint(x: 0.08477*width, y: 0.14649*height), control1: CGPoint(x: 0.07909*width, y: 0.29724*height), control2: CGPoint(x: 0.05262*width, y: 0.21641*height))
        path.addCurve(to: CGPoint(x: 0.36121*width, y: 0.13137*height), control1: CGPoint(x: 0.12437*width, y: 0.06876*height), control2: CGPoint(x: 0.30053*width, y: 0.05529*height))
        path.addCurve(to: CGPoint(x: 0.48703*width, y: 0.354*height), control1: CGPoint(x: 0.41693*width, y: 0.15447*height), control2: CGPoint(x: 0.37351*width, y: 0.46525*height))
        path.addCurve(to: CGPoint(x: 0.64571*width, y: 0.24604*height), control1: CGPoint(x: 0.52197*width, y: 0.31444*height), control2: CGPoint(x: 0.56735*width, y: 0.26323*height))
        path.addCurve(to: CGPoint(x: 0.81919*width, y: 0.28645*height), control1: CGPoint(x: 0.71229*width, y: 0.22708*height), control2: CGPoint(x: 0.80533*width, y: 0.23951*height))
        path.addCurve(to: CGPoint(x: 0.78083*width, y: 0.42234*height), control1: CGPoint(x: 0.83242*width, y: 0.32151*height), control2: CGPoint(x: 0.79696*width, y: 0.37631*height))
        path.addCurve(to: CGPoint(x: 0.76636*width, y: 0.57651*height), control1: CGPoint(x: 0.76109*width, y: 0.47281*height), control2: CGPoint(x: 0.75333*width, y: 0.52512*height))
        path.addCurve(to: CGPoint(x: 0.88401*width, y: 0.85461*height), control1: CGPoint(x: 0.78094*width, y: 0.66923*height), control2: CGPoint(x: 0.89011*width, y: 0.76323*height))
        path.addCurve(to: CGPoint(x: 0.72801*width, y: 0.89058*height), control1: CGPoint(x: 0.87253*width, y: 0.89649*height), control2: CGPoint(x: 0.79076*width, y: 0.91197*height))
        path.addLine(to: CGPoint(x: 0.72677*width, y: 0.89021*height))
        path.closeSubpath()
        return path
    }
}
