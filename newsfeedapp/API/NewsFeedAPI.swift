//
//  NewsFeedAPI.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/13/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import Foundation

class NewsFeedAPI {
    
    static func getNewsFeed() -> [NewsFeed] {
        let feed = [
            NewsFeed(title: "Police on manhunt", subTitle: "for two who gang-raped 16-year-old", date: "13/1/2020", actionStatement: "Alert", imageName: "walkthrough_two"),
            NewsFeed(title: "Scrap dealer jailed 10 years for defilement", subTitle: "If you've ever come near a design mockup", date: "13/1/2020", actionStatement: "Alert", imageName: "walkthrough_two"),
            NewsFeed(title: "Middle-aged man stabbed to death by suspected robbers at Tarkwa-Maakro", subTitle: "Ghana officially the Republic of Ghana, is a country located along the Gulf of Guinea",date: "13/1/2020", actionStatement: "Alert", imageName: "walkthrough_two"),
            NewsFeed(title: "Japan's naked art of body positivity", subTitle: "Coronaviruses (CoV) are a large family of viruses that cause illness ranging", date: "13/1/2020", actionStatement: "Alert", imageName: "walkthrough_two"),
            NewsFeed(title: "All aboard India's joyful toy train", subTitle: "Live world statistics on population, government and economics, society and media", date: "13/1/2020", actionStatement: "Alert", imageName: "walkthrough_two")
        ]
        return feed
    }
}
