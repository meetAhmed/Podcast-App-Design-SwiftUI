//
// OnboardingService.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import Foundation

class OnboardingService {
    static let instance = OnboardingService()
    private init() {}
    
    let data = [
        Onboarding(image: "Person1", title: "Podkes", desc: "Listening to podcast, reading a book, listening to an aduibook and watching films isn't waste of time. It's how somebody becomes wise!"),
        Onboarding(image: "Person2", title: "Digital Audio Files", desc: "A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening."),
        Onboarding(image: "Person3", title: "Freedom", desc: "If you love to write, start a blog. If you love to talk, start a podcast. If you love to solve problems, start a business. If you love freedom, do what you love."),
    ]
}
