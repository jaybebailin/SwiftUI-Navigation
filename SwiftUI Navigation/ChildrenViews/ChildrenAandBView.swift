//
//  ChildrenAandBView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//

import SwiftUI

struct ChildrenAandBView: View {
    
    @State private var title = "Multiple Child View"
    
    var body: some View {
        VStack {
            HStack {
                Text("This page shows the Multiple Child View from the Parent View")
                    .foregroundStyle(.primary)
                    .padding()
            }
            
            HStack {
                VStack{
                    Group{
                        Text("A")
                            .foregroundStyle(Color.black)
                            .fontWeight(.heavy)
                        Image(systemName: "figure.child")
                            .foregroundStyle(Color.red)
                    }
                }
                VStack{
                    Group{
                        Text("B")
                            .foregroundStyle(Color.black)
                            .fontWeight(.heavy)
                        Image(systemName: "figure.child")
                            .foregroundStyle(Color.teal)
                    }
                }
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
        ChildrenAandBView()
    }
}
