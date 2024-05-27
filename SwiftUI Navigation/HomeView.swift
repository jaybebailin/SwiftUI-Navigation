//
//  HomeView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//


import SwiftUI

struct HomeView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var showWelcome = false
    
    var body: some View {
        
        NavigationStack {
            //NavigationStack
            /// Creates a navigation stack that manages its own navigation state.
            /// If you want to access the navigation state, use
            /// ``init(path:root:)-3bt4q`` instead.
            /// - Parameters:
            /// - root: The view to display when the stack is empty.
            ///
            
            //NavigationLink
            /// Creates a navigation link that presents the destination view.
            /// - Parameters:
            ///   - destination: A view for the navigation link to present.
            ///   - label: A view builder to produce a label describing the `destination`
            ///    to present.
            
            
            Spacer()
            Image(systemName: "figure.and.child.holdinghands")
                .font(.system(size: 80))
                .foregroundStyle(.blue)
            NavigationLink("Navigation Links") {
                NavigationLinkView()
            }
            
            Spacer()
            Image(systemName: "list.bullet")
                .font(.system(size: 80))
                .foregroundStyle(.black)
            
            NavigationLink("Navigation Lists") {
                ListView()
            }
            NavigationLink("Navigation Lists") {
                ListView()
            }
            NavigationLink("Navigation Lists") {
                ListView()
            }
            
            Spacer()
            
            HStack {
                
                Image(systemName: "s.circle")
                    .font(.system(size: 40))
                    .foregroundStyle(.blue)
                
                Image(systemName: "h.circle")
                    .font(.system(size: 40))
                    .foregroundStyle(.blue)
                
                Image(systemName: "e.circle")
                    .font(.system(size: 40))
                    .foregroundStyle(.blue)
                
                Image(systemName: "e.circle")
                    .font(.system(size: 40))
                    .foregroundStyle(.blue)
                
                Image(systemName: "t.circle")
                    .font(.system(size: 40))
                    .foregroundStyle(.blue)
            }
            
            NavigationLink("Sheet View") {
                SheetPresenter()
                    .presentationCornerRadius(35)
            }
            Spacer()
            
            
            Button("Dismiss") {
                showWelcome = true
            }
        
            .padding()
            .navigationDestination(isPresented: $showWelcome) {
                WelcomeView()
            }
            
            .navigationTitle("SwiftUI View Types")
            .navigationBarBackButtonHidden(true)
        }
    }
}


#Preview {
    NavigationStack {
        HomeView()
    }
}
