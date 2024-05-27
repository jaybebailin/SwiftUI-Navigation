//
//  ContentView.swift
//  SwiftUI Navigation
//
//  Created by Jay Lauf on 5/22/24.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        
        TabView {
            HomeView()
                    .tabItem {
                        Label(
                            "Home", systemImage: "house.fill"
                        )
                    }
            
            NavigationLinkView()
                .tabItem {
                    Label(
                        "Navigation Links", systemImage: "figure.and.child.holdinghands"
                    )
                }
            
            ListView()
                .tabItem {
                    Label(
                        "Navigation Lists", systemImage: "list.bullet"
                    )
                }
            
            SheetPresenter()
                .tabItem {
                    Label("Sheet View", systemImage: "filemenu.and.selection")
                }
        }
    }
}

#Preview {
    NavigationStack{
        HomeTabView()
    }
}
