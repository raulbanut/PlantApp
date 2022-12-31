//
//  UiKit + Components.swift
//  Plant
//
//  Created by Raul Banut on 31.12.2022.
//

import Foundation
import UIKit
import CoreHaptics

class UIHapticFeedback {
    
    static func generateImpact(
        style: UIImpactFeedbackGenerator.FeedbackStyle = .light,
        intensity: CGFloat = 10.0) {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {
            return
        }
        let hapticFeedback = UIImpactFeedbackGenerator(style: style)
        hapticFeedback.impactOccurred(intensity: intensity)
    }
}
