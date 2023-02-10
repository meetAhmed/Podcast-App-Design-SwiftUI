//
// OnBoardingScreen.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct OnBoardingScreen: View {
    let model: Onboarding
    
    var body: some View {
        VStack {
            Image(model.image)
                .resizable()
                .scaledToFill()
                .frame(width: 240, height: 317)
                .clipShape(RectangleWithTopCornersOnly())
            
            Text(model.title)
                .poppins(.bold, 36)
            
            Text(model.desc)
                .poppins(.light, 13)
        }
        .padding()
        .multilineTextAlignment(.center)
    }
}

struct OnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreen(model: dev.onboarding)
    }
}
