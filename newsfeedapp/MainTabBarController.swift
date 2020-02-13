//
//  MainTabBarController.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 12/7/19.
//  Copyright © 2019 Nana Aferi. All rights reserved.
//

import UIKit

class MainTabBarController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
    }
    
    func setUpTabBar() {
        let newsVC = UINavigationController(rootViewController: NewsVC())
        newsVC.tabBarItem = UITabBarItem(title: "News", image: nil, tag: 0) //(tabBarSystemItem: .bookmarks, tag: 0)
       //  newsVC.tabBarItem.image =
       //  newsVC.tabBarItem.selectedImage =
        
        let reportsVC = UINavigationController(rootViewController: ReportsVC())
        reportsVC.tabBarItem = UITabBarItem(title: "Reports", image: nil, tag: 1)
        
        viewControllers = [newsVC, reportsVC]
        
    }
}
