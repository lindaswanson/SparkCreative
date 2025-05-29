//
//  TodaysTreeAfterBreathingView.swift
//  SparkCreative Watch App
//
//  Created by Linda Swanson on 5/21/25.
//

import SwiftUI
import HealthKit

struct TodaysTreeAfterBreathingView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Cornsilk")
                    .ignoresSafeArea()
                Text("TODO: Today's Tree After Breathing. \nFinish once Today's Tree layout is done.")
                    .foregroundStyle(Color("HunterGreen"))
            }
        }
    }
}

#Preview {
    TodaysTreeAfterBreathingView()
}
