//
// OnboardingViewModel.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var data = OnboardingService.instance.data
}
