//
//  NewsProtocols.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/17/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import UIKit

protocol NewsViewProtocol: class {
    var presenter: NewsPresenterProtocol? { get set }
    
    //PRESENTER -> VIEW
    func showFeed(with newsfeed:[NewsFeed])
    
    func showError()
    
    func showLoading()
    
    func hideLoading()
}

protocol NewsPresenterProtocol: class {
    //view
    var view: NewsViewProtocol? { get set }
    //interactor
    var interactor: NewsInteractorInputProtocol? { get set }
    //wireFrame
    var wireFrame: WireFrameProtocol? { get set }
    
    //VIEW -> PRESENTER
    func viewDidLoad() 
    
}

protocol NewsInteractorInputProtocol: class {
    
    var presenter: NewsInteractorOutputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func fetchNewsFeed()
    
}

protocol NewsInteractorOutputProtocol: class {
    
    // INTERACTOR -> PRESENTER
    func didFetchNewsFeed(_ newsfeed: [NewsFeed])
    
}

protocol WireFrameProtocol: class {
    static func createNewsModule(mainTabBarVC: MainTabBarController) -> UIViewController
    // PRESENTER -> WIREFRAME
    func presentNewsVC(from view: NewsViewProtocol, forFeed newsFeed: NewsFeed)
}
