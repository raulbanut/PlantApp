//
//  Colors.swift
//  Plant
//
//  Created by Raul Banut on 14.12.2022.
//

import Foundation
import SwiftUI
import UIKit

extension Color {
    //MARK: Colors
    static let opal = Color("opal")
    static let amazon = Color("amazon")
    static let magicMint = Color("magicMint")
    static let paleSilver = Color("paleSilver")
    static let almostWhite = Color("almostWhite")
    static let hunterGreen = Color("hunterGreen")
    static let darkSeaGreen = Color("darkSeaGreen")
    static let darkJungleGreen = Color("darkJungleGreen")
    static let forestGreenTraditional = Color("forestGreenTraditional")
    
    //MARK: Color with modifiers
//    static var lightCaramelBackground: some View {
//        Color.lightCaramel
//            .ignoresSafeArea(edges: .all)
//    }
    
    static var fadeBlackBackground: some View {
        Color.black
            .opacity(0.85)
            .ignoresSafeArea(edges: .all)
    }
}

extension UIColor {
    static let opal = UIColor(.opal)
    static let amazon = UIColor(.amazon)
    static let magicMint = UIColor(.magicMint)
    static let paleSilver = UIColor(.paleSilver)
    static let almostWhite = UIColor(.almostWhite)
    static let hunterGreen = UIColor(.hunterGreen)
    static let darkSeaGreen = UIColor(.darkSeaGreen)
    static let darkJungleGreen = UIColor(.darkJungleGreen)
    static let forestGreenTraditional = UIColor(.forestGreenTraditional)    
}
