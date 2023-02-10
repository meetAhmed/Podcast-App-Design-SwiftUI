//
// DiscoverView.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct DiscoverView: View {
    @StateObject var viewModel = DiscoverViewModel()
    @State var selectedCategory = ""
    @Namespace var namespace
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                HStack {
                    TextField("Search", text: $searchText)
                        .foregroundColor(.theme.secondaryTextColor)
                    Image(systemName: "magnifyingglass")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.theme.tabviewBackground)
                )
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.categories, id: \.self) { category in
                            Text(category)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 10)
                                .background(
                                    ZStack {
                                        if selectedCategory == category {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.white)
                                                .frame(width: 30, height: 3)
                                                .offset(y: 20)
                                                .matchedGeometryEffect(id: "CategoryCard", in: namespace)
                                        }
                                    }
                                )
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selectedCategory = category
                                    }
                                }
                        }
                    }
                }
                .padding(.top, 10)
                
                Text("Trending")
                    .poppins(.bold, 24)
                    .padding(.top, 30)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                        ForEach(viewModel.podcasts, id: \.self) { podcast in
                            PodcastCard(podcast: podcast)
                        }
                    }
                }
            }
            .padding()
        }
        .preferredColorScheme(.dark)
        .onAppear {
            selectedCategory = viewModel.categories.first ?? ""
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
