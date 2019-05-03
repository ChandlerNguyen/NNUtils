//
//  DemoPageViewController.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/10/19.
//

import UIKit
import NNUtils

class DemoPageViewController: ViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl?
    @IBOutlet weak var pageViewContainer: UIView?
    
    lazy var pageViewController: UIPageViewController = {
        let pageVC = UIPageViewController(transitionStyle: UIPageViewController.TransitionStyle.scroll, navigationOrientation: UIPageViewController.NavigationOrientation.horizontal, options: nil)
        pageVC.view.translatesAutoresizingMaskIntoConstraints = false
        
        pageVC.setViewControllers([ViewController1(),
                                   ViewController2(),
                                   ViewController3()])
        pageVC.setDidFinishTransition { [weak self] (viewController, pageIndex) in
            self?.segmentedControl?.selectedSegmentIndex = pageIndex
        }
        
        return pageVC
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        title = "Dem Page View Controller"
        tabBarItem = UITabBarItem(title: "Page Controller", image: #imageLiteral(resourceName: "favorite_empty_icon"), tag: 0)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewHierarchy()
        //setupConstraints()
        
        
    }

    private func setupViewHierarchy() {
        //self.pageViewContainer?.addSubview(self.pageViewController.view)
        self.pageViewContainer?.addSubview(subview: self.pageViewController.view, options: .Overlay)
    }
    
    private func setupConstraints() {
        
        self.pageViewController.view
            .topAnchor(equalTo: self.pageViewContainer!.topAnchor)
            .bottomAnchor(equalTo: self.pageViewContainer!.bottomAnchor)
            .trailingAnchor(equalTo: self.pageViewContainer!.trailingAnchor)
            .leadingAnchor(equalTo: self.pageViewContainer!.leadingAnchor)
        
    }
    
    @IBAction func segmentedControlValueDidChange(sender: UISegmentedControl) {
        print("Selected Segment Index: \(sender.selectedSegmentIndex)")
        self.pageViewController.showPage(sender.selectedSegmentIndex)
    }
}
