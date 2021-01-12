//
//  ViewController.swift
//  BreakingNews
//
//  Created by goshabedunkevich on 01/12/2021.
//  Copyright (c) 2021 goshabedunkevich. All rights reserved.
//

import UIKit
import BreakingNews

class ViewController: UIViewController, BreakingDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Make sure to embed the view in a navigation controller. The view must also be a subclass of Breaking
        
        /*
         Networking.......
         */
        
        // The view will be dismissed automatically when the user taps on it.
        let breaking = self.navigationController as! Breaking
        breaking.news(nil, .link, .white)
        breaking.breakingNewsDelegate = self
        
    }
    
    func didPressAlert() {
        
        /*
         Do something extra.....
         */
    }
}

