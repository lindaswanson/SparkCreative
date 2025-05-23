//
//  CheckInModel.swift
//  SparkCreative Watch App
//
//  Created by Linda Swanson on 5/21/25.
//

import Foundation

struct CheckInModel: Identifiable {
    var id: UUID = UUID()
    var stressLevel: Int
    var date: Date
    var bpm: Int
    var emotions: [String]
    var circumstances: [String]
    var exercises: [String]
}
