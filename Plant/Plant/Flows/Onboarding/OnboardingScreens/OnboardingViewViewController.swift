//
// OnboardingViewViewController.swift
// Plant
//
// Created by Raul Banut on 06.12.2022.
//
//

import Foundation
import UIKit
import SwiftUI

extension OnboardingView {
    class ViewController: UIHostingController<AnyView> {
        
        let viewModel: ViewModel = ViewModel()
        
        init(rootView: ContentView) {
            super.init(rootView: rootView
                .environmentObject(viewModel)
                .eraseToAnyView()
            )
        }
        
        @objc required dynamic init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
