//
//  TodaysTreeView.swift
//  SparkCreative Watch App
//
//  Created by Linda Swanson on 5/21/25.
//

/*
 Color Schemes
 Stress Levels  : Colors
 1. Delighted   : Orange
 2. Pleasant    : Yellow
 3. Neutral     : Green
 4. Displeased  : Blue
 5. Upset       : Red
 */
/*
import SwiftUI
import HealthKit


// NSHealthShareUsageDescription is defined in Watch target's Info tab, which then populates the Build Settings tab's info.plist Values. "Privacy - Health share & update"

// Heartrate on watch: https://medium.com/display-and-use-heart-rate-with-healthkit-on/display-and-use-heart-rate-with-healthkit-on-swiftui-for-watchos-2b26e29dc566

struct TodaysTreeView: View {
    private var healthStore = HKHealthStore()
    let heartRateQuantity = HKUnit(from: "count/min")
    
    @State private var pulse = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Cornsilk")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("treeBlue")
                    Text("Displeased")
                    // FIXME: is there a way to define font in one place so every time I change size, I don't have to repeat font name?
                        .font(.custom("Sinhala MN", size: 15))
                    Spacer()
                    Text("Current:")
                        .bold()
                    Text("\(pulse)" + " BPM")
                    // Text("60 BPM")
                }
            }
            // FIXME: Why does this look gray instead of green?
            .navigationTitle {
                Text("Today's Tree")
                    .bold()
            }
            /*
             .toolbar {
             ToolbarItem(placement: .topBarLeading) {
             Image("CalmTree-logo")
             }
             }
             */
        }
        .font(.custom("Sinhala MN", size: 20))
        .foregroundStyle(Color("hunterGreen"))
        .onAppear(perform: start)
        
    }
    
    func start() {
        authorizeHealthKit()
        startHeartRateQuery(quantityTypeIdentifier: .heartRate)
    }
    
    
    func authorizeHealthKit() {
        
        // Used to define the identifiers that create quantity type objects.
        let healthKitTypes: Set = [
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!]
        // Requests permission to save and read the specified data types.
        healthStore.requestAuthorization(toShare: healthKitTypes, read: healthKitTypes) { _, _ in }
    }
    
    private func startHeartRateQuery(quantityTypeIdentifier: HKQuantityTypeIdentifier) {
        
        // We want data points from our current device
        let devicePredicate = HKQuery.predicateForObjects(from: [HKDevice.local()])
        
        // A query that returns changes to the HealthKit store, including a snapshot of new changes and continuous monitoring as a long-running query.
        let updateHandler: (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void = {
            query, samples, deletedObjects, queryAnchor, error in
            
            // A sample that represents a quantity, including the pulse and the units.
            guard let samples = samples as? [HKQuantitySample] else {
                return
            }
            
            self.process(samples, type: quantityTypeIdentifier)
            
        }
        
        // It provides us with both the ability to receive a snapshot of data, and then on subsequent calls, a snapshot of what has changed.
        let longRunningQuery = HKAnchoredObjectQuery(type: HKObjectType.quantityType(forIdentifier: quantityTypeIdentifier)!, predicate: devicePredicate, anchor: nil, limit: HKObjectQueryNoLimit, resultsHandler: updateHandler)
        // Don't want Direct Method Call (immutable data)
        // Don't want Long-running queries. These queries continue to run in the background and update your app whenever the system detects changes to the HealthKit store.
        // DO want Queries. Queries return the current snapshot of the requested data from the HealthKit store.
        let queryDescriptors: [HKQueryDescriptor] = []
        
 // FIXME: 5/27/25: this is where I left off. Need to research what all these parameters need to be.
        let newQuery = HKSampleQuery(sampleType: <#T##HKSampleType#>,
                                     predicate: <#T##NSPredicate?#>,
                                     limit: <#T##Int#>,
                                     sortDescriptors: <#T##[NSSortDescriptor]?#>,
                                     resultsHandler: <#T##(HKSampleQuery, [HKSample]?, (any Error)?) -> Void#>)
        
        let query = HKSampleQuery(queryDescriptors: queryDescriptors,
                                  limit: 1,
                                  sortDescriptors: <#T##[NSSortDescriptor]#>,
                                  resultsHandler: <#T##(HKSampleQuery, [HKSample]?, (any Error)?) -> Void#>)
        
        longRunningQuery.updateHandler = updateHandler
        
        // query execution
        healthStore.execute(query)
    }
    
    private func process(_ samples: [HKQuantitySample], type: HKQuantityTypeIdentifier) {
        var lastHeartRate = 0.0
        
        for sample in samples {
            if type == .heartRate {
                lastHeartRate = sample.quantity.doubleValue(for: heartRateQuantity)
            }
            
            self.pulse = Int(lastHeartRate)
        }
    }
}

#Preview {
    TodaysTreeView()
}

*/
