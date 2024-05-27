//
//  NavigationLinkView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//


import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "figure")
                        .font(.system(size: 140))
                        .foregroundStyle(.teal)
                    Image(systemName: "figure")
                        .font(.system(size: 140))
                        .foregroundStyle(.red)
                }
                Text("This is the Parent View in the Navigation Stack")
                    .foregroundStyle(.primary)
                    .padding()
                VStack(spacing: 20) {
                    NavigationLink("Show Child A") {
                        ChildAView()
                            .foregroundStyle(Color.teal)
                    }
                    NavigationLink("Show Child B") {
                        ChildBView()
                            .foregroundStyle(Color.red)
                    }
                    NavigationLink("Show Multiple Children") {
                        ChildrenAandBView()
                    }
                }
            }
            .navigationTitle("Navigation Links")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.quaternary, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationStack {
        NavigationLinkView()
    }
}
