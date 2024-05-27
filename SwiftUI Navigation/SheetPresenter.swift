//
//  SheetPresenter.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/20/24.
//

import SwiftUI

struct SheetPresenter: View {
    @State private var isSheet1Presented = false
    @State private var isSheet2Presented = false
    
    var body: some View {
        ScrollView {
            
            VStack {
                Image(systemName: "filemenu.and.selection")
                    .font(.system(size: 100))
                    .foregroundStyle(.red)
                    .padding(.vertical, 50)
                Text("Here is the Sheet View")
                    .foregroundStyle(.primary)
                  
                Button("Show 1st Sheet") {
                    isSheet1Presented = true
                }.sheet(isPresented: $isSheet1Presented) {
                    Sheet1View()
                        .presentationDetents([.fraction(0.77)])
                        .presentationDragIndicator(.visible)
                }
            }
            .padding(20)
           
            
            
            VStack {
                Image(systemName: "filemenu.and.selection")
                    .font(.system(size: 100))
                    .foregroundStyle(.teal)
                    .padding(.vertical, 55)
                Text("")
                    .foregroundStyle(.primary)
                    
                Button("Show 2nd Sheet") {
                    isSheet2Presented = true
                }.sheet(isPresented: $isSheet2Presented) {
                    Sheet2View()
                        .presentationDetents([.fraction(0.39)])
                        .presentationDragIndicator(.visible)
                }
            }
        }
        
        .navigationTitle("Sheet View")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.quaternary, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        SheetPresenter()
    }
}
