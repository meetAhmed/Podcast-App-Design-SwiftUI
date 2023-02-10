//
// LibraryViewModel.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import Foundation

class LibraryViewModel: ObservableObject {
    @Published var recentPodcast = PodcastService.instance.recentPodcast
}
