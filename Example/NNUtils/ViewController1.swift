//
//  ViewController1.swift
//  NNUtils_Example
//
//  Created by Nang Nguyen on 4/19/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import NNUtils

class ViewController1: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func showAlert(sender: Any) {
        let alert = UIAlertController.alert(title: "Title here",
                                            message: "What action do you want to perform?")
        
        alert.addDefault("Delete") { (_) in
            print("You've pressed delete")
        }
        
        alert.addDefault("Clone") { (_) in
            print("You've pressed clone")
        }
        
        alert.addCancel { (_) in
            print("You've pressed the cancel")
        }
        
        alert.show()
    }
    
    @IBAction func showActionSheet(sender: Any) {
        let alert = UIAlertController.actionSheet(title: "Title here",
                                                  message: "What action do you want to perform?")
        
        alert.addDefault("Delete") { (_) in
            print("You've pressed delete")
        }
        
        alert.addDefault("Clone") { (_) in
            print("You've pressed clone")
        }
        
        alert.addCancel { (_) in
            print("You've pressed the cancel")
        }
        
        alert.show()
    }

}
