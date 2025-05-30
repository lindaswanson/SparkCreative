//
//  EnterNamePage.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/17/25.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var appData: AppDataModel

    //var mood: String
    @State private var goToWelcomeScreen = false
    
    //var name: String
    var body: some View {
            NavigationStack{
                ZStack{
                    Color.cream.edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Text("""
                    Welcome to 
                    Calm Tree
                    """)
                        .bold()
                        .font(.largeTitle)
                        .frame(width: 300, height: 300)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.hunterGreen)
                    
                    Image("tree")
                    Text("""
                        take a deep breath- Youre in the right place. Like the rhythm in the treesm we're here to help you track your stress and find balance, naturally. Let's reduce your stress together.
                        """)
                    
                    .frame(width: 250, height: 250)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.hunterGreen)
                    .font(.caption)
                    .bold()
                    
                    LetsGoButton()
                    .fullScreenCover(isPresented: $goToWelcomeScreen) {
                        EnterNameView()
                    }
                    
                }
            }
        }
    }
    
    func LetsGoButton() -> some View {
        
        Button(action: {
            goToWelcomeScreen = true
        }, label: {
            Image("letsGo")
                //.font(.headline)
               // .foregroundColor(.white)
                //.padding()
                //.background(Color.blue)
               // .cornerRadius(10)
        })
    }
  
    
}

#Preview {
    WelcomeView()
        .environmentObject(AppDataModel())

}
