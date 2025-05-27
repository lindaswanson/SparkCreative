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

import SwiftUI

struct TodaysTreeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Cornsilk")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("TreeBlue")
                    Text("Displeased")
                        // FIXME: is there a way to define font in one place so every time I change size, I don't have to repeat font name?
                        .font(.custom("Sinhala MN", size: 15))
                    Spacer()
                    Text("Current:")
                        .bold()
                    Text("60 BPM")
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
        .foregroundStyle(Color("HunterGreen"))


    }
}

#Preview {
    TodaysTreeView()
}
