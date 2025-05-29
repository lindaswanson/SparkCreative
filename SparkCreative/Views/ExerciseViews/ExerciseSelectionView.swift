//
//  ExerciseSelectionView.swift
//  SparkCreative
//
//  Created by Shakira Al-Jahmee on 5/12/25.
//

import SwiftUI

struct ExerciseSelectionView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.cream.edgesIgnoringSafeArea(.all)
                VStack{
                    Text("De-Stress Exercises")
                        .font(.largeTitle)
                        .frame(width: 200, height: 100)
                       .multilineTextAlignment(.center)
                    
                    Text("take a mindful minute")
                        .font(.title)
                    ListView()
                    
                }
                
            }
        }
    }
}

#Preview {
    ExerciseSelectionView()
}
