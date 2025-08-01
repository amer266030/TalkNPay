//
//  BillChartView.swift
//  TalkNPay
//
//  Created by Amer Alyusuf on 01/08/2025.
//

import SwiftUI
import Charts

struct BillChartView: View {
    @Bindable var vm: HomeVM
    
    var body: some View {
        let segments = computeSegmentsAlignedToChart(from: vm.bills)
        VStack(alignment: .leading, spacing: 24) {
            HStack {
                Text("Bills Summary for")
                Spacer()
                Text(Date.now.formatted(.dateTime.month(.abbreviated).year()))
            }
            .font(.headline)
                
            Chart(segments) { segment in
                SectorMark(
                    angle: .value("Amount", segment.bill.amount),
                    innerRadius: .ratio(0.7),
                    angularInset: 4
                )
                .foregroundStyle(segment.bill.paymentStatus.color)
                .cornerRadius(8)
            }
            .chartBackground { proxy in
                GeometryReader { geo in
                        let center = CGPoint(x: geo.size.width / 2, y: geo.size.height / 2)
                        let radius = geo.size.width / 2.5
                    
                    ForEach(segments) { segment in
                            let radians = segment.midAngle * (.pi / 180)
                            let labelX = center.x + cos(radians) * radius
                            let labelY = center.y + sin(radians) * radius
                        
                        VStack {
                            HStack {
                                Image(systemName: segment.bill.provider.icon)
                                    .foregroundStyle(.y1)
                                CurrencyView(amount: segment.bill.amount, font: .caption)
                            }
                            .font(.caption)
                        }
                        .position(x: labelX, y: labelY)
                    }
                }
            }
            .frame(height: UIScreen.width / 2)
            .padding(.vertical, 32)
            
            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 3),
                alignment: .leading,
                spacing: 8
            ) {
                ForEach(PaymentStatus.allCases) { status in
                    HStack(alignment: .firstTextBaseline, spacing: 4) {
                        Image(systemName: "circle.fill")
                            .foregroundStyle(status.color)
                        Text(status.strValue)
                    }
                }
            }
            .font(.caption)
            .padding()
            .background(.ultraThinMaterial, in: .rect(cornerRadius: 8))
            
            Divider()
        }
    }
    
    fileprivate func computeSegmentsAlignedToChart(from bills: [Bill]) -> [BillsChartSegment] {
        let total = bills.reduce(0.0) { $0 + $1.amount }
        guard total > 0 else { return [] }
        
        var cumulativeAngle: Double = -90 // Start at top center
        
        return bills.map { bill in
            let angle = (bill.amount / total) * 360
            let midAngle = cumulativeAngle + angle / 2
            let segment = BillsChartSegment(
                id: bill.id.uuidString,
                bill: bill,
                midAngle: midAngle
            )
            cumulativeAngle += angle
            return segment
        }
    }
    
}

//#Preview {
//    let x = DIContainer.shared
//    BillChartView(vm: HomeVM())
//        .padding()
//}
