//
//  AppDataManager.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/29/25.
//

import Foundation

// this holds the mood from the slider as well as the selected items from QuestionaireViewOne and QuestionairViewTwo.
class AppDataModel: ObservableObject {
//    @Published var mood: String = ""
//    @Published var selectedEmotions: [String] = []
//    @Published var selectedCircumstances: [String] = []
//
    
    @Published var currentCalendarEntry = CalendarEntry(date: Date.now, mood: "", selectedEmotions: [""], selectedCircumstances: [""], exercises: [""])
    // this stores the calendar entries created by the user
    @Published var entries: [CalendarEntry] = []
    
    /*
    init(){
        loadIntitialData()
    }
     */
    
    // loads data when app manager is called and prints statement for confirmation
    //testing purposees
    /*
    func loadIntitialData() {
        //add data - dummy data
        entries.append(CalendarEntry(date: Date(), mood: "happy", selectedEmotions: ["hopeful", "excited"], selectedCircumstances: ["school", "work"],exercises:  ["venting","breathing"]))
        print(entries)
    }
     */
    
    // adds data after user plants tree to entries array
    func addEntries(CalendarEntry: CalendarEntry){
        entries.append(CalendarEntry)
    }
}
