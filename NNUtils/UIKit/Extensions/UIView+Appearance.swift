//
//  UIView+Appearance.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/17/19.

//

import UIKit

private typealias SubviewTreeModifier = (() -> UIView)

public struct AppearanceOptions: OptionSet {
    public let rawValue: UInt
    public init(rawValue: UInt) { self.rawValue = rawValue }
    public static let Overlay  = AppearanceOptions(rawValue: 1 << 0)
    public static let UseAutoresize = AppearanceOptions(rawValue: 1 << 1)
}

extension UIView {
    
    private func addSubviewUsingOptions(options: AppearanceOptions, modifier: SubviewTreeModifier) {
        let subview: UIView = modifier()
        if options.union(.Overlay) == .Overlay {
            if options.union(.UseAutoresize) != .UseAutoresize {
                subview.translatesAutoresizingMaskIntoConstraints = false
                let views = dictionaryOfNames(views: [subview])
                let horisontalConstraints = NSLayoutConstraint.constraints(
                    withVisualFormat: "|[subview]|",
                    options: [],
                    metrics: nil,
                    views: views
                )
                addConstraints(horisontalConstraints)
                let verticalConstraints = NSLayoutConstraint.constraints(
                    withVisualFormat: "V:|[subview]|",
                    options: [],
                    metrics: nil,
                    views: views
                )
                addConstraints(verticalConstraints)
            } else {
                frame = bounds
                subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            }
        }
    }
    
    private func dictionaryOfNames(views: [UIView]) -> Dictionary <String, UIView> {
        var container = Dictionary <String, UIView> ()
        for (_, value) in views.enumerated() {
            container["subview"] = value
        }
        return container
    }
    
    // MARK: Interface methods
    
    public func addSubview(subview: UIView, options: AppearanceOptions) {
        if subview.superview == self {
            return
        }
        addSubviewUsingOptions(options: options) { [weak self] in
            self?.addSubview(subview)
            return subview
        }
    }
    
    public func insertSubview(subview: UIView, index: NSInteger, options: AppearanceOptions) {
        if subview.superview == self {
            return
        }
        
        addSubviewUsingOptions(options: options) { [weak self] in
            self?.insertSubview(subview, at: index)
            return subview
        }
    }
}
