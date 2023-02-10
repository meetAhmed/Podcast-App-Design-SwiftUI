//
// PodcastService.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

class PodcastService {
    static let instance = PodcastService()
    private init() {}
    
    let data = [
        Podcast(image: "Person9", background: .theme.yellow, title: "Deep Cover: Never Seen Again.", author: "Denny Kulon"),
        Podcast(image: "Person8", background: .theme.yellow, title: "Deep Cover: Never Seen Again.", author: "Denny Kulon"),
        Podcast(image: "Person5", background: .blue, title: "How Dolly Parton led me to an epiphany.", author: "Abumenyang"),
        Podcast(image: "Person6", background: .theme.orange, title: "New Heights with Jason and Travis Kelce.", author: "Tir McDohl"),
        Podcast(image: "Person7", background: .theme.yellow, title: "Deep Cover: Never Seen Again.", author: "Denny Kulon"),
        Podcast(image: "Person4", background: .purple, title: "The missing 96 percent of the universe.", author: "Claire Malone"),
    ]
    
    let recentPodcast = [
        RecentPodcast(image: "Person7", background: .theme.yellow, title: "Deep Cover: Never Seen Again.", lastPlayed: "Today"),
        RecentPodcast(image: "Person6", background: .theme.orange, title: "New Heights with Jason and Travis Kelce.", lastPlayed: "Today"),
        RecentPodcast(image: "Person5", background: .blue, title: "How Dolly Parton led me to an epiphany.", lastPlayed: "Yesterday"),
        RecentPodcast(image: "Person4", background: .purple, title: "The missing 96 percent of the universe.", lastPlayed: "Last Week")
    ]
}
