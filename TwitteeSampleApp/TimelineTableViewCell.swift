//
//  TimelineTableViewCell.swift
//  TwitteeSampleApp
//
//  Created by 村上 雄太郎 on 2022/11/06.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var tweetContents: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(timeline: TimelineDataModel) {
        self.userName.text = timeline.userName as String
        self.tweetContents.text = timeline.tweetContents as String
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
