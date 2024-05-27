//
//  ChildBView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//

import SwiftUI

struct ChildBView: View {
        @State private var title = "Child B"
        
    var body: some View {
        HStack {
            Text("This page shows Child B from the Parent View")
                .foregroundStyle(.primary)
                .foregroundStyle(Color.teal)
                .padding()
        }
        
        HStack {
            ZStack{
                Group{
                    Text("B")
                        .foregroundStyle(Color.black)
                        .fontWeight(.heavy)
                    Image(systemName: "figure.child")
                        .foregroundStyle(Color.teal)
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
        ChildBView()
    }
}
