//
//  QuestionaireView.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/12/25.
//

import SwiftUI

struct QuestionaireViewOne: View {
    @EnvironmentObject var appData: AppDataModel
    @State private var goToQuestionaireTwo = false
   // @State var selectedEmotions: [String] = []
    
    //var mood: String //comes from mood slider
    
    let emotions = ["Indifferent", "Calm", "Focused", "Alert", "Curious", "Mindful", "Detached", "Tolerant", "Present", "Grounded", "Accepting", "Passive", "Settled", "Stable", "Reflective"]
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack{
            Color.cream.edgesIgnoringSafeArea(.all)

            VStack{
                Text("Lets dig deeper into how you are feeling")
                Text("Choose an emotionthat  best describes your stress level")
                    .frame(alignment: .center)
                VStack{
                    
                    HStack{
                        LazyVGrid(columns: columns, spacing: 16){
                            ForEach(emotions, id: \.self) { emotion in
                                
                                Button(action: {
                                    if appData.currentCalendarEntry.selectedEmotions.contains(emotion){
                                        appData.currentCalendarEntry.selectedEmotions.removeAll{ $0 == emotion }
                                    } else {
                                        appData.currentCalendarEntry.selectedEmotions.append(emotion)
                                    }
                                }) {
                                    Text(emotion)
                                        .frame(width: 60, height: 40)
                                        .background(appData.currentCalendarEntry.selectedEmotions.contains(emotion) ? Color.blue : Color.gray)
                                        .foregroundStyle(.white)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    
                }
                NextQuestionaireScreen()
                    .navigationDestination(isPresented: $goToQuestionaireTwo) {
                        QuestionaireViewTwo()
                    }
            }
        }
    }
    
    func NextQuestionaireScreen() -> some View {
        Button(action: {
            goToQuestionaireTwo = true
        }, label: {
//            Text("NEXT")
//                .frame(width: 100, height: 40)
//                .font(.headline)
//                .foregroundStyle(.white)
//                .background(Color.pink)
//                .cornerRadius(10)
            Image("nextButton")
        })
    }
}

#Preview {
    QuestionaireViewOne()
        .environmentObject(AppDataModel())
}
