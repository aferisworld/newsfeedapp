//
//  NewsWireFrame.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/17/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import UIKit

class NewsWireFrame: WireFrameProtocol {
    
    
    func presentNewsVC(from view: NewsViewProtocol, forFeed newsFeed: NewsFeed) {
        //
    }
    
    
    class func createNewsModule(mainTabBarVC: MainTabBarController) -> UIViewController {
        
        if let view = mainTabBarVC.viewControllers?.first?.children.first as? NewsView {
            let presenter: NewsPresenterProtocol = NewsPresenter()
            let wireFrame: WireFrameProtocol = NewsWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            
            return mainTabBarVC
        }
        return UIViewController()
    }
     
    
}

