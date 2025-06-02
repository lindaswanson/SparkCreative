//
//  MoodViewModel.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/17/25.
//

import SwiftUI

class MoodViewModel: ObservableObject {
  //  var appData: AppDataModel
   // @EnvironmentObject var moodData: MoodModel

    @EnvironmentObject var appData: AppDataModel
    @Published var progress: Double = 0
    
    func getMood() -> MoodSlider {
        switch progress {
        case 0..<0.2:
            return .delighted
        case 0.2..<0.4:
            return .plesant
        case 0.4..<0.6:
            return .neutral
        case 0.6..<0.8:
            return .displeased
        default:
            return .upset
        }
    }
    //shakira
    var treeColor: Image {
        getMood().treeColor
    }
    
//    func getTreeColor() -> Image{
//            switch self {
//            case .happy:
//                return Image("blueLeaf")
//            case .sad:
//                return Image("greenLeaf")
//            case .neutral:
//                return Image("yellowLeaf")
//            case .angry:
//                return Image("orangeLeaf")
//            case .stressed:
//                return Image("redLeaf")
//            }
//        }
    }

//
//#Preview {
//    MoodViewModel()
//
//}
