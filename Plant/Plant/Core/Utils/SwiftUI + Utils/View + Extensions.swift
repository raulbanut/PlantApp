//
//  View + Extensions.swift
//  Plant
//
//  Created by Raul Banut on 06.12.2022.
//

import Foundation
import SwiftUI

extension View {
    
    @inlinable
    public func eraseToAnyView() -> AnyView {
        return .init(self)
    }
}
