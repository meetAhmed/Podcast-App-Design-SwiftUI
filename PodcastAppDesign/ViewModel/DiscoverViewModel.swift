//
// PodcastViewModel.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import Foundation

class DiscoverViewModel: ObservableObject {
    @Published var podcasts = PodcastService.instance.data
    @Published var categories = ["All", "Life", "Comedy", "Tech", "Sport"]
}
