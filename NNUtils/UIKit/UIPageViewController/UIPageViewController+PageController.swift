//
//  UIPageViewController+PageController.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/10/19.
//

import UIKit

extension UIPageViewController {
    
    private struct AssociatedKeys {
        static var PageController = "PageController"
    }
    
    private var pageController: PageController? {
        get {
            var controller = objc_getAssociatedObject(self, &AssociatedKeys.PageController) as? PageController
            if (controller != nil) {
                return controller
            }
            controller = PageController()
            self.pageController = controller
            return controller
        }
        
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self,&AssociatedKeys.PageController,newValue as PageController?,.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                pageController?.pageViewController = self
            }
        }
    }
    
    public func setViewControllers(_ viewControllers: [UIViewController]) {
        self.pageController?.viewControllers = viewControllers
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
