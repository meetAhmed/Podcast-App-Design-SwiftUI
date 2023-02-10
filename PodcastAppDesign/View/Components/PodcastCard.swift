//
// PodcastCard.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct PodcastCard: View {
    let podcast: Podcast
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(podcast.image)
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(podcast.background)
                )
            
            Text(podcast.title)
                .poppins(.bold, 13)
            
            Text(podcast.author)
                .poppins(.medium, 10)
        }
    }
}

struct PodcastCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PodcastCard(podcast: PodcastService.instance.data[5])
            PodcastCard(podcast: PodcastService.instance.data[4])
            PodcastCard(podcast: PodcastService.instance.data[2])
            PodcastCard(podcast: PodcastService.instance.data[3])
        }
    }
}
