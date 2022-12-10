//
//  Onboarding.swift
//  Plant
//
//  Created by Raul Banut on 06.12.2022.
//

import Foundation
import SwiftUI
import Combine

struct OnboardingPage: Identifiable, Equatable {
    var id: Int {
        index
    }
    let index: Int
    let title: String
    let imageName: String
    
    init(index: Int, title: String, imageName: String) {
        self.index = index
        self.title = title
        self.imageName = imageName
    }
}
