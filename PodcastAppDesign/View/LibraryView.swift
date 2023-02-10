//
// LibraryView.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct LibraryView: View {
    @StateObject var viewModel = LibraryViewModel()
    @State var contentSize: CGSize = .zero
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Recently Played")
                    .foregroundColor(.theme.secondaryTextColor)
                    .poppins(.light, 14)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        ForEach(viewModel.recentPodcast, id: \.self) { recentPodcast in
                            RecentlyPlayedCard(recentPodcast: recentPodcast)
                        }
                    }
                    .overlay(
                        GeometryReader { geo in
                            Color.clear.onAppear {
                                contentSize = geo.size
                            }
                        }
                    )
                }
                .frame(maxHeight: contentSize.height)
            }
            .padding(.all, 20)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.theme.tabviewBackground)
            )
            .padding(.all, 30)
        }
        .preferredColorScheme(.dark)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
