//
//  TimelineViewController.swift
//  TwitteeSampleApp
//
//  Created by 村上 雄太郎 on 2022/11/05.
//

import UIKit

class TimelineViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var timelineDataList: [TimelineDataModel] = []
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TimelineTableViewCell", bundle: nil), forCellReuseIdentifier: "TimelineTableViewCell")
        setTimelineData()
    }
    
    func setTimelineData() {
        for i in 1...5 {
            let timelineDataModel = TimelineDataModel(userName: "\(i)番目のユーザー", tweetContents: "テストツイートです")
            timelineDataList.append(timelineDataModel)
        }
    }
}

extension TimelineViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timelineDataList.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineTableViewCell", for: indexPath) as! TimelineTableViewCell
        cell.setCell(timeline: timelineDataList[indexPath.row])
        return cell
    }
}
