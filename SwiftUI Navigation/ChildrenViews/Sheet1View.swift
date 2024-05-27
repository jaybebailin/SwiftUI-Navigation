//
//  Sheet1View.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//

import SwiftUI

struct Sheet1View: View {
    @State private var isSheet2Presented = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(uiColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1))
                    .ignoresSafeArea()
                    VStack{
                        Group{
                            Image(systemName: "figure.child")
                                .foregroundStyle(Color.red)
                            Button("Child B") {
                                isSheet2Presented = true
                            }.sheet(isPresented: $isSheet2Presented) {
                                Sheet2View()
                                    .presentationDetents([.fraction(0.80)])
                                    .presentationDragIndicator(.visible)
                            }
                        }
                        //.border(Color.black)
                    }
                    .font(.system(size: 100))
                    .foregroundStyle(.black)
            }
            .navigationTitle("Child A")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationStack {
        Sheet1View()
    }
}
