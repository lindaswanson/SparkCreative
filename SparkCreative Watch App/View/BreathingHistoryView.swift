//
//  BreathingHistoryView.swift
//  SparkCreative Watch App
//
//  Created by Linda Swanson on 5/21/25.
//

import SwiftUI

struct BreathingHistoryView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Sage")
                    .ignoresSafeArea()
                VStack {
                    Text("Your last 5 exercises")
                        //.font(.caption2)
                    /* Header if using a table
                     HStack {
                     Text("Date")
                     Text("BPM Before")
                     Text("Duration")
                     Text("BPM After")
                     
                     } .foregroundStyle(Color("HunterGreen"))
                     */
                    ScrollView {
                        ForEach(0..<5) { _ in
                            //ForEach(CheckInViewModel.id) { _ in
                            VStack {
                                ZStack(alignment: .topLeading) {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: .infinity, alignment: .topLeading)
                                    //.fill(Color("Feldgrau"))
                                    //.background(Color("Feldgrau"))
                                        .foregroundStyle(Color("Feldgrau"))
                                    VStack {
                                        HStack {
                                            Text("5/21/25 10:30am")
                                            Spacer()
                                            Text("👍")
                                        }
                                        HStack {
                                            //Text("1 min")
                                            Text("❤️ Before: 80")
                                            Spacer()
                                            Text("After: 60")
                                        }
                                    }
                                    .padding()
                                }
                                .foregroundStyle(Color("Cornsilk"))
                            }
                        }
                    }
                }
            }
            .navigationTitle {
                Text("Breathing Log")
                    .foregroundStyle(Color("HunterGreen"))
            }
        }
        .font(.custom("Sinhala MN", size: 15))
        .foregroundStyle(Color("HunterGreen"))
    }
}

#Preview {
    BreathingHistoryView()
}
