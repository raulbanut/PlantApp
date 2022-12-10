//
// OnboardingViewViewModel.swift
// Plant
//
// Created by Raul Banut on 06.12.2022.
//
//

import Foundation

extension OnboardingView {
    class ViewModel: ObservableObject {
        @Published var isLoading: Bool = false
        
        @Published var currentPage = 0 {
            didSet {
                
            }
        }
        
        let onboardingPages: [OnboardingPage] = [
            OnboardingPage(
                index: 0,
                title: "We provide high quality plants just for you",
                imageName: "Onboarding1"
            ),
            OnboardingPage(
                index: 1,
                title: "Your satisfaction is our number one priority",
                imageName: "Onboarding2"
            ),
            OnboardingPage(
                index: 2,
                title: "Let's shop your favourite plants with Plant now!",
                imageName: "Onboarding3"
            )
        ]
    }
}
