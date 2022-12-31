//
//  Reusables.swift
//  Plant
//
//  Created by Raul Banut on 31.12.2022.
//

import Foundation
import SwiftUI

struct ActivityIndicator: View {
    var tint: Color = .white
    var scale: CGFloat = 1
    
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: tint))
            .scaleEffect(scale)
    }
}
