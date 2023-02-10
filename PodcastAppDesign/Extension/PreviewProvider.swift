//
// PreviewProvider.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() {}
    
    let onboarding = OnboardingService.instance.data[0]
    let podcast = PodcastService.instance.data[0]
    let recentPodcast = PodcastService.instance.recentPodcast[0]
}
