//
//  NewsInteractor.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/18/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import Foundation

class NewsInteractor: NewsInteractorInputProtocol {
    weak var presenter: NewsInteractorOutputProtocol?
    
    func fetchNewsFeed() {
        // do {
            if let newsFeedList = NewsFeedAPI.getNewsFeed() {
                if newsFeedList.isEmpty {
                    // TODO:- fetch from online
                }else {
                    presenter?.didFetchNewsFeed(newsFeedList)
                }
            }
//        } catch  {
//            presenter?.didFetchNewsFeed([])
//        }
    }
    
}
