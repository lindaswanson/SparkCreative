//
//  StressLevelSelectionModel.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/17/25.
//

import Foundation
import SwiftUI

//this is for questionare
//struct Mood: Identifiable{
//    let name: String
//    var isSelected: Bool = false
//    var id: String = UUID().uuidString
//}

//class MoodModel : ObservableObject {
//    
//   
//}

enum MoodSlider {
    case happy
    case sad
    case neutral
    case angry
    case stressed
    
    var title: String {
        switch self {
        case .happy:
            return "\"Happy\""
        case .sad:
            return "\"Sad\""
        case .neutral:
            return "\"Neutral\""
        case .angry:
            return "\"Angry\""
        case .stressed:
            return "\"Stressed\""
        }
    }
    
    var treeColor: Image {
        switch self {
        case .happy:
            return Image("leafBlue")
        case .sad:
            return Image("leafGreen")
        case .neutral:
            return Image("leafYellow")
        case .angry:
            return Image("leafOrange")
        case .stressed:
            return Image("leafRed")
        }
    }
}
