//
//  NewsPresenter.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/17/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import Foundation

class NewsPresenter: NewsPresenterProtocol { 
    var interactor: NewsInteractorInputProtocol?
    
    weak var view: NewsViewProtocol?
    var wireFrame: WireFrameProtocol?
    
    func viewDidLoad() {
        view?.showLoading()
        let deadlineTime = DispatchTime.now() + 3
        DispatchQueue.main.asyncAfter(deadline: deadlineTime, execute: {
            self.interactor?.fetchNewsFeed()
        })
        
    }
}

extension NewsPresenter: NewsInteractorOutputProtocol {
    
    func didFetchNewsFeed(_ newsfeed: [NewsFeed]) {
        view?.hideLoading()
        view?.showFeed(with: newsfeed)
    }
    
    
}
