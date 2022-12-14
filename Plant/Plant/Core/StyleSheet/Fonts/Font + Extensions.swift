//
//  Font + Extensions.swift
//  Plant
//
//  Created by Raul Banut on 14.12.2022.
//

import Foundation
import SwiftUI

fileprivate enum SecondaryFontName: String {
    case rubik_regular = "Rubik-Regular"
    case rubik_semi_bold = "Rubik-SemiBold"
}

fileprivate enum MainFontName: String {
    case extraBold = "P22MackinacPro-ExtraBold"
}

extension Font {
    struct Main {
        static func extraBold(_ size: CGFloat) -> Font {
            return .custom("P22MackinacPro-ExtraBold", size: size)
        }
        
        /// 28 pts
        static var h1: Font {
            return extraBold(28)
        }
        
        /// 24 pts
        static var h2: Font {
            return extraBold(24)
        }
        
        /// 18 pts
        static var h3: Font {
            return extraBold(18)
        }
        
        /// 16 pts
        static var h4: Font {
            return extraBold(16)
        }
        
        /// 14 pts
        static var h5: Font {
            return extraBold(14)
        }
    }
    
    struct Secondary {
        static func regular(_ size: CGFloat) -> Font {
            return .custom(SecondaryFontName.rubik_regular.rawValue, size: size)
        }
        
        static func semiBold(_ size: CGFloat) -> Font {
            return .custom(SecondaryFontName.rubik_semi_bold.rawValue, size: size)
        }
        
        /// 16 pts
        static var h1SemiBold: Font {
            return semiBold(16)
        }
        
        /// 14 pts
        static var h2SemiBold: Font {
            return semiBold(14)
        }
        
        /// 12 pts
        static var h3SemiBold: Font {
            return semiBold(12)
        }
        
        /// 10 pts
        static var h4SemiBold: Font {
            return semiBold(10)
        }
        
        /// 16 pts
        static var h1Regular: Font {
            return regular(16)
        }
        
        /// 14 pts
        static var h2Regular: Font {
            return regular(14)
        }
        
        /// 12 pts
        static var h3Regular: Font {
            return regular(12)
        }
    }
}

extension UIFont {
    struct Main {
        static func extraBold(_ size: CGFloat) -> UIFont {
            return UIFont(name: MainFontName.extraBold.rawValue, size: size)!
        }
        
        /// 24 pts
        static var h2: UIFont {
            return extraBold(24)
        }
        
        /// 14 pts
        static var h5: UIFont {
            return extraBold(14)
        }
    }
    
    struct Secondary {
        static func regular(_ size: CGFloat) -> UIFont {
            return UIFont(name: SecondaryFontName.rubik_regular.rawValue, size: size)!
        }
        
        static func semiBold(_ size: CGFloat) -> UIFont {
            return UIFont(name: SecondaryFontName.rubik_semi_bold.rawValue, size: size)!
        }
        
        static var h2Regular: UIFont {
            return regular(14)
        }
        
        static var h2SemiBold: UIFont {
            return semiBold(14)
        }
    }
}
