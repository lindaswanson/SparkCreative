//
//  BreathingAnimationView.swift
//  SparkCreative Watch App
//
//  Created by Linda Swanson on 5/20/25.
//

import SwiftUI

struct BreathingAnimationView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Cornsilk")
                    .ignoresSafeArea()
                Text("TODO: Pull in Breathing Animation from other app I built.")
                    .foregroundStyle(Color("hunterGreen"))

            }
            .navigationTitle {
                Text("Breathing Exercise")
                    .foregroundStyle(Color("hunterGreen"))
            }
        }

    }
}

#Preview {
    BreathingAnimationView()
}
