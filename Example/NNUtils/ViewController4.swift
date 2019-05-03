//
//  ViewController4.swift
//  NNUtils_Example
//
//  Created by Nang Nguyen on 5/1/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import NNUtils

class ViewController4: ViewController {

    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.barTintColor = UIColor.App.yellow
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor.App.yellow.cgColor
        searchBar.setTextBackgroundColor(UIColor.App.darkYellow)
        searchBar.placeholder = "Search"
        
        searchBar.setTextDidChange({ [weak self](predicate) in
            print("Search predicate: \(predicate)")
        })
        
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewHierarchy()
        setupConstraints()
    }

    private func setupViewHierarchy() {
        view.addSubview(searchBar)
    }
    
    private func setupConstraints() {
        
        searchBar
            .topAnchor(equalTo: view.topAnchor)
            .heightAnchor(equalTo: 48.0)
            .leadingAnchor(equalTo: view.leadingAnchor)
            .trailingAnchor(equalTo: view.trailingAnchor)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
