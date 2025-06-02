//
//  TodaysTreeView.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/12/25.
//

import SwiftUI

struct TodaysTreeView: View {
    //shakira
    @StateObject var moodViewModel = MoodViewModel()

    @EnvironmentObject var appData: AppDataModel
    //@Binding var selectedTab: Int
    @StateObject var viewModel = MoodViewModel()
    @State var goToCalendar: Bool = false
    var name = ""
    @State var showButton: Bool = false
    @State var goToExercise = false
    
    //shakira - added show button flag
    @State var showButtons = false
    
    
//    var mood: String
//    var emotions: [String]
//    var circumstances: [String]
    
    
    var body: some View {
        
        
        NavigationStack {
            ZStack{
                VStack{
                    Text("Todays Tree")
                        .font(.title)
                        .bold()
                    //image of the correlated tree
                    
                    // Image(appData.treeColor)
                    //shakira
//                    moodViewModel.treeColor
//                                   .resizable()
//                                   .frame(width: 200, height: 200)
//                    MoodSlider.from(mood: appData.currentCalendarEntry.mood).treeColor
//                        .resizable()
//                        .frame(width: 200, height: 200)
//
                    
                    //shakira - added tree
                    MoodSlider.from(mood: appData.currentCalendarEntry.mood).treeColor
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Text("mood: \(appData.currentCalendarEntry.mood)")//data
                    Text("Your emotions: \(appData.currentCalendarEntry.selectedEmotions.joined(separator: ", "))")
                    //selected from previous screen
                    Text("Your circumstances:  \(appData.currentCalendarEntry.selectedCircumstances.joined(separator: ", "))")
                    //selected from previous screen

                    //bubbles of data
                    
                    // This modifier replaces NavigationLink(isActive:)
                    
                    
                    plantTreeButton(appData: appData)
                    goToExerciseButton()
                    
                    //                    .fullScreenCover(isPresented: $goToCalendar){
                    //                        CalendarView()
                    //                    }
                }
            }
            NavigationLink(destination: CheckInView(currentTab: .calendar, name: name), isActive: $goToCalendar) {
        
            }
            NavigationLink(destination: ExerciseSelectionView(), isActive: $goToExercise) {
        
            }
        }
    }
    

    
    func plantTreeButton(appData: AppDataModel) -> some View{
        
        Button(action: {
            //selectedTab = 1
            appData.addEntries(CalendarEntry: appData.currentCalendarEntry)
          
            goToCalendar = true
        }, label: {
            Text("Plant Tree")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 100, height: 80)
                .background(Color.blue)
                .cornerRadius(20)
        })
       
        
    }
    
    //shakira - added button for exercise 5/31
    
    func goToExerciseButton() -> some View{
        Button(action: {
            goToExercise = true
        }, label: {
            Text("Try Breathing exercise")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 100, height: 80)
                .background(Color.blue)
                .cornerRadius(20)
        })
    }
    
}
//shakira - added extension for tree
extension MoodSlider {
    static func from(mood: String) -> MoodSlider {
        switch mood.lowercased() {
        case "happy":
            return .happy
        case "sad":
            return .sad
        case "neutral":
            return .neutral
        case "angry":
            return .angry
        case "stressed":
            return .stressed
        default:
            return .neutral
        }
    }
}

#Preview {
    TodaysTreeView()
        .environmentObject(AppDataModel())
}
