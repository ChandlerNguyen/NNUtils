//
//  UIDevice+Extensions.swift
//  NNUtils
//
//  Created by Nang Nguyen on 5/3/19.
//

import UIKit

public extension UIDevice {
    
    var isPhone: Bool {
        return userInterfaceIdiom == .phone
    }
    
    var isPad: Bool {
        return userInterfaceIdiom == .pad
    }
    
    var size: CGSize {
        return CGSize(width: width, height: height)
    }
    
    var height: CGFloat {
        return self.isPortrait ? UIScreen.main.bounds.height : UIScreen.main.bounds.width
    }
    
    var width: CGFloat {
        return self.isPortrait ? UIScreen.main.bounds.height : UIScreen.main.bounds.width
    }
    
    var isPortrait: Bool {
        let orientation = UIApplication.shared.statusBarOrientation
        return orientation == .portrait || orientation == .portraitUpsideDown
    }
    
    var isLandscape: Bool {
        let orientation = UIApplication.shared.statusBarOrientation
        return orientation == .landscapeLeft || orientation == .landscapeRight
    }
}
