//
//  NewsPresenter.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/17/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import Foundation

class NewsPresenter: NewsPresenterProtocol {
    var wireFrame: WireFrameProtocol?
    
    weak var view: NewsViewProtocol?
    
    func viewDidLoad() {
        view?.showLoading()
    }
    
    
}
