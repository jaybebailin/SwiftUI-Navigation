//
//  DismissView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(\.dismiss) private var dismiss
    @State var isLoggedIn: Bool = false
    @State private var showDetails = false
    
    
    var body: some View {
        
        
         NavigationStack {
             
             ScrollView {
                 Image(systemName: "figure")
                     .font(.system(size: 200))
                     .foregroundStyle(.black)
                     .padding(.vertical, 50)
               
                 VStack {
                     Button("Get Started") {
                         showDetails = true
                     }
                     .frame(width: 225, height: 65)
                     .foregroundColor(.black)
                     .font(.title2)
                     .background(.teal)
                     .cornerRadius(25)
                     .padding()
                 }
                 
                 .navigationDestination(isPresented: $showDetails) {
                     HomeTabView()
                 }
                 
                 .padding()
                 .navigationTitle("Welcome to SwiftUI ")
                 .toolbar {
                     ToolbarItem(placement: .topBarTrailing)
                     {                         
                     }
                 }
           
             }
        }
    }
}


class AuthenticateViewModel: ObservableObject {
    @Published var isAuthenticated = true

    func login() {
        // Perform login logic
        isAuthenticated = false
    }

    func logout() {
        isAuthenticated = true
    }
}

#Preview {
    NavigationStack {
        WelcomeView()
    }
}
