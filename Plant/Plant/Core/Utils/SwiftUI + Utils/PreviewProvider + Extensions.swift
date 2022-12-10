//
//  PreviewProvider + Extensions.swift
//  Plant
//
//  Created by Raul Banut on 06.12.2022.
//

import Foundation
import SwiftUI

extension PreviewDevice {
    
    static let iPhoneSE_3rd = PreviewDevice(rawValue: "iPhone SE (3rd generation)")
    static let iPhoneSE_1st = PreviewDevice(rawValue: "iPhone SE (1st generation)")
    static let iPhone14 = PreviewDevice(rawValue: "iPhone 14")
    static let iPhone14Max = PreviewDevice(rawValue: "iPhone 14 Pro Max")
    static let iPhone8Plus = PreviewDevice(rawValue: "iPhone 8 Plus")
}

extension PreviewDevice: Identifiable {
    public var id: String { self.rawValue }
}

extension PreviewProvider {
    static var previewDevices: [PreviewDevice] {
        [.iPhone14Max, .iPhone14, .iPhoneSE_3rd, .iPhoneSE_1st]
    }
}
