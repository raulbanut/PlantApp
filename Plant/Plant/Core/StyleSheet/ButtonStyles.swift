//
//  ButtonStyles.swift
//  Plant
//
//  Created by Raul Banut on 14.12.2022.
//

import Foundation
import SwiftUI

struct ButtonStyles {
    struct BorderedFillRounded: ButtonStyle {
        
        var enabled: Bool
        var cornerRadius: CGFloat = 12
        let fillColor: Color
        var textColor: Color = .white
        
        func buttonBackground(config: Configuration) -> Color {
            guard enabled else {
                return Color.red
            }
            return fillColor.opacity(config.isPressed ? 0.9 : 1)
        }
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .foregroundColor(enabled ? textColor : .red)
                .opacity(configuration.isPressed ? 0.9 : 1.0)
                .padding(16)
                .frame(height: 48)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(buttonBackground(config: configuration))
                )
                .roundedBorder(enabled ? fillColor : .clear, cornerRadius: cornerRadius, lineWidth: 2.5)
                .opacity(enabled ? 1 : 0.8)
        }
    }
}
