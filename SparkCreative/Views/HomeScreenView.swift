//
//  HomeScreenView.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/17/25.
//

import SwiftUI

struct HomeScreenView: View {
    @EnvironmentObject var appData: AppDataModel

    //var mood: String
    @StateObject var viewModel = MoodViewModel()
    
    @State private var goToQuestionaire = false
    
    var name: String
 
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.cream
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Greeting(name: name)
                    SliderView(progress: Binding (
                        get: {CGFloat(viewModel.progress)},
                        set: {viewModel.progress = Double($0)}
                    ))//revise this 
                    //mood
                    Text(viewModel.getMood().title)
                        .foregroundColor(.blue)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    NextButton()
                
                }
                .navigationDestination(isPresented: $goToQuestionaire) {
                    QuestionaireViewOne()
                }
       
                
            }
        }
    }
    
    func NextButton() -> some View {
        Button(action: {
            appData.currentCalendarEntry.mood = viewModel.getMood().title
            
            //NTS: Shak revisit
            
          goToQuestionaire = true
        }, label: {
            Image("nextButton")
//            ZStack {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 80)
//                Text("Next")
//                    .foregroundColor(.white)
//                    .bold()
//            }
            .padding()
            //.offset(y: -100)
        })
        
    }
    
    
    struct Greeting: View {
        var name: String
        var body: some View {
            VStack{
                Text("Hey \(name)")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.largeTitle)
                    .foregroundColor(.hunterGreen)
                    //.foregroundStyle(.black)
                    
                Text("Time for your daily check in!")
                    .foregroundColor(.hunterGreen)
                
                Text("What is your stress level today?")
                    .foregroundColor(.hunterGreen)

            }
            .padding(.bottom, -100)
        }
    }
    
    

}

#Preview {
    HomeScreenView(name: "shak")
        .environmentObject(AppDataModel())

}
