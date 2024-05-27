//
//  Sheet2View.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/21/24.
//

import SwiftUI

struct Sheet2View: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(uiColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1))
                    .ignoresSafeArea()
                HStack {
                    VStack{
                       ChildBView()
                        //.border(Color.black)
                    }
                    
                }
            }
            .navigationTitle("2nd Sheet")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.teal, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationStack {
        Sheet2View()
    }
}
