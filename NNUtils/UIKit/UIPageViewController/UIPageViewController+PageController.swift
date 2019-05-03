//
//  UIPageViewController+PageController.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/10/19.
//

import UIKit

private extension AssociatedKeys {
    static var nnPageController = AssociatedKey<PageController>()
}

extension UIPageViewController {
    
    private var pageController: PageController? {
        get {
            return AssociatedObjects.fetch(from: self, key: .nnPageController, initialValue: { () -> PageController in
                let pageCtr = PageController()
                pageCtr.pageViewController = self
                return pageCtr
            })
        }
    }
    
    public func setViewControllers(_ viewControllers: [UIViewController]) {
        self.pageController?.setViewControllers(viewControllers)
    }
    
    public func showViewController(_ viewController: UIViewController) {
        self.pageController?.showViewController(viewController, animated: true)
    }
    
    public func showViewController(_ viewController: UIViewController, animated: Bool) {
        self.pageController?.showViewController(viewController, animated: animated)
    }
    
    public func showPage(_ page: Int) {
        self.pageController?.showPage(page, animated: true)
    }
    
    public func showPage(_ page: Int, animated: Bool) {
        self.pageController?.showPage(page, animated: animated)
    }
    
    public func setDidFinishTransition(_ didFinishTransition: PageControllerTransition?) {
        self.pageController?.didFinishTransition = didFinishTransition
    }
}
