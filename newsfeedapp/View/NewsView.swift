//
//  FirstVC.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 12/7/19.
//  Copyright © 2019 Nana Aferi. All rights reserved.
//

import UIKit
import PKHUD

class NewsView: UIViewController {
    
    var presenter: NewsPresenterProtocol?
    
    private let newsFeed = NewsFeedAPI.getNewsFeed()
    
    
    let newsTableView =  UITableView()
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.view.backgroundColor = .white
        extendedLayoutIncludesOpaqueBars = true
        // navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "News"
        
        presenter?.viewDidLoad()
        setUpTableView()
        
    }
    
    func setUpTableView() {

        self.registerXIBs()

        self.view.addSubview(self.newsTableView)

        self.newsTableView.translatesAutoresizingMaskIntoConstraints = false

        self.newsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.newsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        self.newsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        self.newsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        self.newsTableView.delegate = self
        self.newsTableView.dataSource = self

        self.newsTableView.isHidden = true

    }
    
    func registerXIBs(){
        self.newsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: Constants.CellIdentifiers.NewsCell.rawValue)
            //.register(NewsTableViewCell.self, forCellReuseIdentifier: "NewsCell")
    }

}

extension NewsView: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsFeed.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 272
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell =  tableView.dequeueReusableCell(withIdentifier: Constants.CellIdentifiers.NewsCell.rawValue, for: indexPath) as! NewsTableViewCell
                cell.backgroundColor = .white
                cell.newsFeed = newsFeed[indexPath.row]
                return cell
    }

}

extension NewsView: NewsViewProtocol {
    
    func showFeed(with newsfeed: [NewsFeed]) {
        //
    }
    
    func showError() {
          HUD.flash(.label("Internet not connected"), delay: 2.0)
    }
    
    func showLoading() {
        self.newsTableView.isHidden = true
        HUD.flash(.progress, delay: 3.0)
        let deadlineTime = DispatchTime.now() + 3
        DispatchQueue.main.asyncAfter(deadline: deadlineTime, execute: {
            self.newsTableView.isHidden = false
        })
    }
    
    func hideLoading() {
         HUD.hide()
    }
    
    
}
