//
//  ContentView.swift
//  SparkCreative Watch App
//
//  Created by Linda Swanson on 5/15/25.
// testing github edits.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        }
    }
    
    @State private var viewModel = CheckInViewModel()
}

#Preview {
    ContentView()
}
