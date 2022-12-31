//
//  ImageModifiers.swift
//  Plant
//
//  Created by Raul Banut on 31.12.2022.
//

import Foundation
import SwiftUI

extension Image {
    func resizableImage(
        size: CGSize,
        contentMode: ContentMode = .fill,
        renderingMode: Image.TemplateRenderingMode? = nil
    ) -> some View {
        self
            .renderingMode(renderingMode)
            .resizable()
            .aspectRatio(contentMode: contentMode)
            .frame(width: size.width, height: size.height)
    }
}
