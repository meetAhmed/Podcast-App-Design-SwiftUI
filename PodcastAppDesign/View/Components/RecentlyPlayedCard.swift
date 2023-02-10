//
// RecentlyPlayedCard.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct RecentlyPlayedCard: View {
    let recentPodcast: RecentPodcast
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image(recentPodcast.image)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 70)
                .clipShape(Rectangle())
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(recentPodcast.background)
                )
            
            VStack(alignment: .leading) {
                Text(recentPodcast.title)
                    .poppins(.bold, 16)
                
                Text(recentPodcast.lastPlayed)
                    .foregroundColor(.theme.secondaryTextColor)
                    .poppins(.light, 12)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct RecentlyPlayedCard_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyPlayedCard(recentPodcast: dev.recentPodcast)
            .preferredColorScheme(.dark)
    }
}
