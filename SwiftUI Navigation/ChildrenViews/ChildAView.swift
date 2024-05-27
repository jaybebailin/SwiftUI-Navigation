//
//  ChildAView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//


import SwiftUI

struct ChildAView: View {
        @State private var title = "Child A"
        
    var body: some View {
        HStack {
            Text("This page shows Child A from the Parent View")
                .foregroundStyle(.primary)
                .foregroundStyle(Color.red)
                .padding()
        }
        
        HStack {
            ZStack{
                Group{
                    Text("A")
                        .foregroundStyle(Color.black)
                        .fontWeight(.heavy)
                    Image(systemName: "figure.child")
                        .foregroundStyle(Color.red)
                }
                //.border(Color.black)
            }
            .font(.system(size: 100))
            .foregroundStyle(.black)
        }
        .navigationTitle($title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    NavigationStack {
        ChildAView()
    }
}
