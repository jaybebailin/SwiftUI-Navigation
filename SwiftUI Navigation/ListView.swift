//
//  ListView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Image(systemName: "list.bullet")
                    .font(.system(size: 80))
                    .foregroundStyle(.black)
                
                Text("This is the List View")
                    .foregroundStyle(.primary)
                    .padding()
                
                List {
                    NavigationLink("Show Child A") {
                        ChildAView()
                    }
                    
                    NavigationLink("Show Child B") {
                        ChildBView()
                    }
                    
                    NavigationLink("Show Multiple Children") {
                        ChildrenAandBView()
                    }
                    
                }
                .listStyle(.inset)
                .frame(height: 160)
            }
            .padding()
            .navigationTitle("List View")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.quaternary, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
