//
//  NewsProtocals.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/17/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import Foundation

protocol NewsViewProtocal: class {
    var presenter: NewsPresenterProtocal? {get set}
    
    //PRESENTER -> VIEW
    func showFeed(with newsfeed:[NewsFeed])
}

protocol NewsPresenterProtocal: class {
    //view
    var view: NewsViewProtocal? { get set }
    //interactor
    //wireFrame
}
