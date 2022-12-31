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
        
        private var mainColor = Color.amazon
        
        var body: some View {
            VStack(spacing: 16) {
                onboardingPages
                PageControl(
                    currentPage: viewModel.currentPage,
                    numberOfPages: viewModel.onboardingPages.count,
                    selectedColor: mainColor
                )
                actionButtons
            }
            .opalBackground()
        }
        
        private var actionButtons: some View {
            HStack(spacing: 0) {
//                Button {
//                    viewModel.onLogin.send()
//                } label: {
//                    Text(Texts.Buttons.login)
//                        .foregroundColor(mainColor)
//                        .font(.Secondary.semiBold(18))
//                        .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
//                }
//                .buttonStyle(.plain)
                
                Buttons.defa
                
                Buttons.DefaultButton(
                    title: Texts.Buttons.login,
                    
                    fillColor: mainColor,
                    action: { }
                )
                
                Buttons.BorderedButton(
                    title: Texts.Buttons.join,
                    foregroundColor: mainColor,
                    borderColor: mainColor,
                    paddingHorizontal: 8
                    action: viewModel.onShowGetNickname.send
                )
            }
//            .padding(16)
        }
        
        private var onboardingPages: some View {
            TabView(selection: $viewModel.currentPage) {
                ForEach(viewModel.onboardingPages) { page in
                    pageItem(page)
                        .id(page.index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .padding(.top, 24)
        }
        
        private func pageItem(_ page: OnboardingPage) -> some View {
            GeometryReader { proxy in
                let imageSize = CGSize(width: proxy.size.width / 1, height: proxy.size.height / 1.5)
                let isCurrentPage = viewModel.currentPage == page.index
                
                VStack(spacing: 24) {
                    page.image
                        .resizableImage(size: imageSize, contentMode: .fit)
                        .scaleEffect(isCurrentPage ? 1 : 0.9)
                        .animation(.easeInOut, value: isCurrentPage)
                    
                    VStack(spacing: 20) {
                        Text(page.title)
                            .font(.Main.h1)
                    }
                    .onboardingPageTextStyle(color: mainColor)
                }
                .frame(maxWidth: .infinity, alignment: .top)
            }
        }
    }
}

fileprivate extension View {
    func onboardingPageTextStyle(color: Color, lineSpacing: CGFloat = 3.0) -> some View {
        self
            .lineSpacing(lineSpacing)
            .foregroundColor(color)
            .padding(.horizontal, 32)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(.center)
    }
}

struct PageControl: View {
    var currentPage: Int
    let numberOfPages: Int
    var selectedColor: Color
    var defaultColor: Color = .paleSilver
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
