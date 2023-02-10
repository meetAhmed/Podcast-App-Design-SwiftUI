//
// CustomTabBarContainerView.swift
// CustomTabView
//
// Created by Ahmed Ali
//

import SwiftUI

struct CustomTabBarContainerView<Content: View>: View {
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            content
                .padding(.bottom, 60)
            
            CustomTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self) {  value in
            tabs = value
        }
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(.home)) {
            Color.theme.background
                .tabBarItem(tab: .home, selection: .constant(.home))
            
            Color.theme.background
                .tabBarItem(tab: .profile, selection: .constant(.profile))
            
            DiscoverView()
                .tabBarItem(tab: .favorite, selection: .constant(.favorite))
        }
    }
}
