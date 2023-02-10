//
// CustomTabBarView.swift
// CustomTabView
//
// Created by Ahmed Ali
//

import SwiftUI

struct CustomTabBarView: View {
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace private var namespace
    @State var localSelection: TabBarItem
    
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchTab(to: tab)
                    }
            }
        }
        .padding(.vertical)
        .background(Color.theme.tabviewBackground.ignoresSafeArea(edges: .bottom))
        .onChange(of: selection) { newValue in
            withAnimation(.easeInOut) {
                localSelection = newValue
            }
        }
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static let tabs: [TabBarItem] = [.home, .favorite, .profile]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(TabBarItem.home), localSelection: .home)
        }
    }
}

private extension CustomTabBarView {
    func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .poppins(.bold, 18)
            
            Text(tab.title)
                .font(.system(size: 12, weight: .semibold, design: .rounded))
        }
        .foregroundColor(localSelection == tab ? .white : Color.gray.opacity(0.8))
        .frame(maxWidth: .infinity)
    }
    
    func switchTab(to tab: TabBarItem) {
        selection = tab
    }
}
