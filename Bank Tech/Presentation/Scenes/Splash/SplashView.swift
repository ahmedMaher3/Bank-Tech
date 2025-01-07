//
//  SplashView.swift
//  Bank Tech
//
//  Created by ahmed maher on 07/01/2025.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    var body: some View {
           ZStack {
               if isActive {
                   MainView() // Navigate to the main content
               } else {
                   SplashContentView() // Show the splash screen
                       .transition(.opacity) // Smooth fade-out transition
                       .onAppear {
                           // Delay for splash screen duration
                           DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                               withAnimation {
                                   isActive = true
                               }
                           }
                       }
               }
           }
       }
}

// MARK: - Splash Content
struct SplashContentView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)

            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
        }
    }
}
#Preview {
    SplashView()
}
