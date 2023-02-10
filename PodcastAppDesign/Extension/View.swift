//
// View.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

extension View {
    func poppins(_ font: Poppins, _ size: CGFloat = 14) -> some View {
        self.font(.custom(font.fontName, size: size))
    }
}
