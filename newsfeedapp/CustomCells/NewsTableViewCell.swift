//
//  NewsTableViewCell.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 12/7/19.
//  Copyright © 2019 Nana Aferi. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    var newsFeed: NewsFeed? {
        didSet {
            guard let newsFeedItem = newsFeed else { return }
            
            if let title = newsFeedItem.title {
                newTitleLabel.text = title
            }
            if let subTitle = newsFeedItem.subTitle {
                newSubLabel.text = subTitle
            }
            if let image = newsFeedItem.imageName {
                newsImageView.image = UIImage(named: image)
            }
        }
        
    }
     
    let actionStatementView:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    let newsImageView: UIImageView = {
        
        let newsImageview = UIImageView(frame: CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 150))
        newsImageview.translatesAutoresizingMaskIntoConstraints = false
        newsImageview.contentMode = .scaleAspectFill
        newsImageview.clipsToBounds = true
        //newsImageview.backgroundColor = .blue
        return newsImageview
    }()
    
    let spacer_1:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 70))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    let newTitleLabel:UILabel = {
        let label = UILabel(frame: CGRect(x: 20, y: 210, width: UIScreen.main.bounds.width - 40, height: 20))
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor =  UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is the news title"
        return label
    }()
    
    let newSubLabel:UILabel = {
        let label = UILabel(frame: CGRect(x: 20, y: 240, width: UIScreen.main.bounds.width - 40, height: 20))
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor =  UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sub title"
        return label
    }()
    
    let line:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 270, width: UIScreen.main.bounds.width, height: 2))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
//    let footerView:UIView = {
//        let view = FooterView(frame: CGRect(x: 0, y: 272, width: UIScreen.main.bounds.width, height: 50))
//        view.translatesAutoresizingMaskIntoConstraints = true
//        view.backgroundColor = .yellow
//        return view
//    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        debugPrint("Don't call this method")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.addSubview(actionStatementView)
        self.addSubview(newsImageView)
        self.addSubview(spacer_1)
        self.addSubview(newTitleLabel)
        self.addSubview(newSubLabel)
        self.addSubview(line)
        //self.addSubview(footerView)
        
        
        // self.addSubview(nameLabel)
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
       // mytext.frame = CGRect(x: 50, y: 100, width: 100, height: 20)
        
        self.addSubview(actionStatementView)
        self.addSubview(newsImageView)
        self.addSubview(spacer_1)
        self.addSubview(newTitleLabel)
        self.addSubview(newSubLabel)
        self.addSubview(line)
        //self.addSubview(footerView)
        // self.addSubview(nameLabel)
        
    }
    
     override func prepareForReuse() {
        // nameLabel.text = ""
        // actionStatementView
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKey(_ input: NSAttributedString.Key) -> String {
    return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
    guard let input = input else { return nil }
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringKeyDictionary(_ input: [String: Any]) -> [NSAttributedString.Key: Any] {
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

