//
//  TodaysTreeView.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/12/25.
//

import SwiftUI

struct TodaysTreeView: View {
    @EnvironmentObject var appData: AppDataModel
    //@Binding var selectedTab: Int
    @StateObject var viewModel = MoodViewModel()
    @State var goToCalendar: Bool = false
    var name = ""
    @State var showButton: Bool = false
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
                    
                    
                    
                    Text("mood: \(appData.currentCalendarEntry.mood)")//data
                    Text("Your emotions: \(appData.currentCalendarEntry.selectedEmotions.joined(separator: ", "))")
                    //selected from previous screen
                    Text("Your circumstances:  \(appData.currentCalendarEntry.selectedCircumstances.joined(separator: ", "))")
                    //selected from previous screen
                    
                    /*
                     Text("Try these to relax?")
                     if selected mood is negative display another category that suggests activities "try these to
                     relax".
                     */
                    //bubbles of data
                    
                    // This modifier replaces NavigationLink(isActive:)
                    
                    plantTreeButton(appData: appData)
                    
                    //                    .fullScreenCover(isPresented: $goToCalendar){
                    //                        CalendarView()
                    //                    }
                }
            }
            NavigationLink(destination: CheckInView(currentTab: .calendar, name: name), isActive: $goToCalendar) {
        
            }
        }
    }
    
//    func exerciseSuggestion(){
//        switch MoodSlider {
//        case .happy:
//            //show button to navigation to breathing exercise
//            //else show nothing
//        }
//    }
    
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
}

#Preview {
    TodaysTreeView()
        .environmentObject(AppDataModel())
}
