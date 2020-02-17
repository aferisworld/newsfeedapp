//
//  FirstVC.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 12/7/19.
//  Copyright © 2019 Nana Aferi. All rights reserved.
//

import UIKit

class NewsView: UIViewController {
    
    var presenter: NewsPresenterProtocal?
    
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
        
       // self.alertsTableView.frame =  CGRect(x: 0, y: 100, width: self.view.frame.width, height: self.view.frame.height)
        // self.alertsTableView.backgroundColor = .yellow
        
        self.registerXIBs()
        
        self.view.addSubview(self.newsTableView)
        
        self.newsTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.newsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.newsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        self.newsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        self.newsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        self.newsTableView.delegate = self
        self.newsTableView.dataSource = self
        
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

extension NewsView: NewsViewProtocal {
    
    func showFeed(with newsfeed: [NewsFeed]) {
        //
    }
    
    func showError() {
        //
    }
    
    func showLoading() {
        //
    }
    
    func hideLoading() {
        //
    }
    
    
}
