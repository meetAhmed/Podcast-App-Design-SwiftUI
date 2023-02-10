//
// HomeView.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct HomeView: View {
    @State private var selection: TabBarItem = .home
    
    var body: some View {
        CustomTabBarContainerView(selection: $selection) {
            DiscoverView()
                .tabBarItem(tab: .home, selection: $selection)
            
            LibraryView()
                .tabBarItem(tab: .favorite, selection: $selection)
            
            ProfileView()
                .tabBarItem(tab: .profile, selection: $selection)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
