//
// OnboardingView.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("signed_in") var currentUserSignedIn = false
    @StateObject var viewModel = OnboardingViewModel()
    @State var onboardingState = 0
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    var body: some View {
        ZStack {
            if currentUserSignedIn {
                HomeView()
            } else {
                onboardingView
            }
        }
        .preferredColorScheme(.dark)
        .onAppear {
            currentUserSignedIn = false
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

private extension OnboardingView {
    var onboardingView: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    ForEach(0..<viewModel.data.count, id: \.self) { index in
                        if index == onboardingState {
                            OnBoardingScreen(model: viewModel.data[index])
                                .transition(transition)
                        }
                    }
                }
                
                Spacer()
                
                Button {
                    if onboardingState == viewModel.data.count - 1 {
                        currentUserSignedIn = true
                    } else {
                        withAnimation(.spring()) {
                            onboardingState += 1
                        }
                    }
                } label: {
                    Image(systemName: onboardingState == viewModel.data.count - 1 ? "checkmark" : "chevron.right")
                        .foregroundColor(Color.theme.background)
                        .font(.headline)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                                .frame(width: 70, height: 70)
                        )
                }
                
                Spacer()
            }
        }
    }
}
