//
//  AppDataModel.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/26/25.
//

import Foundation
import SwiftUI


struct CalendarEntry: Identifiable {
    
    var id: String = UUID().uuidString
    var date: Date = Date()
    var mood: String = ""
    var selectedEmotions: [String] = []
    var selectedCircumstances: [String] = []
    var exercises : [String]
    
}

/*
- we can create different INSTANCES of this struct.
- in the apps context the INSTANCE = ONE entry
- so we need somewhere to place these INSTANCES=ENTRIES
- FINAL resting place for one individual INSTANCE = ENTRY
*/
