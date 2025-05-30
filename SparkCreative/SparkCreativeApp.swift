//
//  SparkCreativeApp.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/12/25.
//

import SwiftUI

@main
struct SparkCreativeApp: App {
    @StateObject var appData = AppDataModel()
    //@StateObject var moodData = MoodModel()
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environmentObject(appData)
                //.environmentObject(moodData)
        }
    }
}
