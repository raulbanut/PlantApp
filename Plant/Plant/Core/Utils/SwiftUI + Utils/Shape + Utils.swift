//
//  Shape + Utils.swift
//  Plant
//
//  Created by Raul Banut on 14.12.2022.
//

import Foundation
import SwiftUI

extension View {
    func roundedBorder(_ color: Color, cornerRadius: CGFloat, lineWidth: CGFloat = 2) -> some View {
        self.modifier(RoundedBorderModifier(color: color, cornerRadius: cornerRadius, lineWidth: lineWidth))
    }
}

struct RoundedBorderModifier: ViewModifier {
    let color: Color
    let cornerRadius: CGFloat
    let lineWidth: CGFloat
    
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(color, lineWidth: lineWidth)
            )
    }
}
