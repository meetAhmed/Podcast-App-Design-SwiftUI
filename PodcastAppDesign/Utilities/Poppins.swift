//
// Poppins.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import Foundation

enum Poppins: String {
    case black
    case bold
    case light
    case medium
    
    var fontName: String {
        "Poppins-\(self.rawValue.capitalized)"
    }
}
