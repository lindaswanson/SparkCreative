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
 
    // this part is for the title to display on the homescreen
    
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
  
    // this part is to display the leaf on the home screen
    //shakira- changed asset names
    var treeColor: Image {
        switch self {
        case .happy:
            return Image("blueTree")
        case .sad:
            return Image("greenTree")
        case .neutral:
            return Image("yellowTree")
        case .angry:
            return Image("orangeTree")
        case .stressed:
            return Image("redTree")
        }
    }
}
