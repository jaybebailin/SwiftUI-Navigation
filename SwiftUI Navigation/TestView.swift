//
//  TestView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/22/24.
//

import SwiftUI

struct TestView: View {
    
    @State private var showDetails = false
    var favoriteColor: Color
    
    var body: some View {
   
    NavigationStack {
        VStack {
            Circle()
                .fill(favoriteColor)
            Button("Show details") {
                showDetails = true
            }
        }
        .navigationDestination(isPresented: $showDetails) {
            WelcomeView()
        }
        .navigationTitle("My Favorite Color")
    }
    }
}

#Preview {
    TestView(favoriteColor: .blue)
}
