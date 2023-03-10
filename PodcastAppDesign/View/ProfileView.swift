//
// ProfileView.swift
// PodcastAppDesign
//
// Created by Ahmed Ali
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    Image("ProfileImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .background(
                            Circle()
                                .fill(Color.theme.tabviewBackground)
                        )
                    
                    Text("Change Profile")
                        .poppins(.medium, 16)
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 20) {
                            Image("ChangeThemeIcon")
                            
                            Text("Change Theme")
                                .poppins(.medium, 16)
                        }
                        .padding()
                        
                        Divider()
                        
                        HStack(spacing: 20) {
                            Image("PrivacyIcon")
                            
                            Text("Privacy")
                                .poppins(.medium, 16)
                        }
                        .padding()
                        
                        Divider()
                        
                        HStack(spacing: 20) {
                            Image("AboutIcon")
                            
                            Text("About")
                                .poppins(.medium, 16)
                        }
                        .padding()
                        
                        Divider()
                        
                        HStack(spacing: 20) {
                            Image("LogoutIcon")
                            
                            Text("Logout")
                                .poppins(.medium, 16)
                        }
                        .padding()
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.theme.tabviewBackground)
                    )
                }
                .padding(.all, 20)
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
