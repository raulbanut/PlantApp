//
// OnboardingViewView.swift
// Plant
//
// Created by Raul Banut on 06.12.2022.
//
//

import Foundation
import SwiftUI

struct OnboardingView {
    struct ContentView: View {
        
        @EnvironmentObject var viewModel: ViewModel
        
        var body: some View {
            VStack {
                //                ForEach(viewModel.onboardingPages) { page in
                //                    Image(page.imageName)
                //                        .resizable()
                //                        .scaledToFit()
                //                }
                onboardingPages
                PageControl(
                    currentPage: viewModel.currentPage,
                    numberOfPages: viewModel.onboardingPages.count
                )
            }
        }
        
        private var onboardingPages: some View {
            TabView(selection: $viewModel.currentPage) {
                ForEach(viewModel.onboardingPages) { page in
                    VStack(spacing: 8) {
                        Image(page.imageName)
                            .resizable()
                            .frame(height: 500)
                            .edgesIgnoringSafeArea(.top)
                        Text(page.title)
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .bold()
                        Spacer()
                    }
                }
            }
        }
    }
}

struct PageControl: View {
    
    var currentPage: Int
    let numberOfPages: Int
    var selectedColor: Color = .blue
    var defaultColor: Color = .gray
    var spacing: CGFloat = 8
    
    var body: some View {
        HStack(spacing: spacing) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                let isSelected = currentPage == index
                RoundedRectangle(cornerRadius: 4)
                    .fill(isSelected ? selectedColor : defaultColor)
                    .frame(width: isSelected ? 20 : 8, height: 8)
                    .animation(.easeInOut, value: isSelected)
            }
        }
        .padding(.bottom, 16)
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    
    static let viewModel = OnboardingView.ViewModel()
    
    static var previews: some View {
//        Group {
//            ForEach(previewDevices) {
//                OnboardingView.ContentView()
//                    .environmentObject(viewModel)
//                    .previewDevice($0)
//            }
//        }
        
        OnboardingView.ContentView()
            .environmentObject(viewModel)
            .previewDevice(.iPhone14Max)
    }
}
#endif
