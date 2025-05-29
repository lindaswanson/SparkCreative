//
//  HeartRateView.swift
//  SparkCreative Watch App
//
//  Created by Linda Swanson on 5/28/25.
//

/* 5/28/25: FIXME: This is a standalone view (not tied into the app) to read the heartrate on the watch.
It's not working, because there's no Developer Mode setting on the watch.  No one knows how to find it / turn it on.
Maybe Saalim knows. He figured it out once.  Maybe Nick Gordon knows, but he's out.
5/29/25: WATCH PORTION PUT ON HOLD to focus on phone app to get it on testflight.
 */

import SwiftUI
import HealthKit

struct HeartRateView: View {
    
    @State private var heartRate: Double = 0
    
    var body: some View {
        VStack {
            Text("Heart Rate: \(heartRate)")
                .font(.title)
            
            Button(action: {
                self.getHeartRate()
            }) {
                Text("Get Heart Rate")
                    .font(.headline)
            }
        }
    }
    
    private func getHeartRate() {
        let healthStore = HKHealthStore()
        let heartRateType = HKQuantityType.quantityType(forIdentifier: .heartRate)!
        let date = Date()
        let predicate = HKQuery.predicateForSamples(withStart: date.addingTimeInterval(-60), end: date, options: .strictEndDate)
        let query = HKStatisticsQuery(quantityType: heartRateType, quantitySamplePredicate: predicate, options: .discreteAverage) { _, result, _ in
            guard let result = result, let quantity = result.averageQuantity() else {
                return
            }
            self.heartRate = quantity.doubleValue(for: HKUnit(from: "count/min"))
        }
        healthStore.execute(query)
    }
}

#Preview {
    HeartRateView()
}
