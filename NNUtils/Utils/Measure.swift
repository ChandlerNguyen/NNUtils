//
//  Measure.swift
//  NNUtils
//
//  Created by Nang Nguyen on 5/3/19.
//

import UIKit

public struct Measure {
    static var statusBarHeight: CGFloat {
        return UIApplication.shared.statusBarFrame.height
    }
    
    static var screenBounds: CGRect {
        return UIScreen.main.bounds
    }
    
    static var screenScale: CGFloat {
        return UIScreen.main.scale
    }
    
    static var screenSize: CGSize {
        return UIScreen.main.bounds.size
    }
    
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    static var deviceSize: CGSize {
        return UIDevice.current.size
    }

    static var deviceHeight: CGFloat {
        return UIDevice.current.height
    }

    static var deviceWidth: CGFloat {
        return UIDevice.current.width
    }
    
}
