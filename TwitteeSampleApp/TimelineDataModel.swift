//
//  TimelineDataModel.swift
//  TwitteeSampleApp
//
//  Created by 村上 雄太郎 on 2022/11/05.
//

import Foundation

struct TimelineDataModel {
    var userName: String
    var tweetContents: String
    
    init(userName: String, tweetContents: String) {
        self.userName = userName as String
        self.tweetContents = tweetContents as String
    }
}
