//
// TabBarItem.swift
// CustomTabView
//
// Created by Ahmed Ali
//

import SwiftUI

enum TabBarItem: Hashable {
    case home, favorite, profile
    
    var iconName: String {
        switch self {
        case .home:
            return "house.fill"
        case .favorite:
            return "photo.stack"
        case .profile:
            return "person.fill"
        }
    }
    
    var title: String {
        switch self {
        case .home:
            return "Discover"
        case .favorite:
            return "Library"
        case .profile:
            return "Profile"
        }
    }
}
