//
// RectangleWithTopCornersOnly.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct RectangleWithTopCornersOnly: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.width / 2,
                startAngle: Angle(degrees: 180),
                endAngle: Angle(degrees: 0),
                clockwise: false
            )
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        }
    }
}
