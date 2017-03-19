//
//  InfoTableViewCell.swift
//  Aszoo_pages
//
//  Created by Hideaki Oshima on 2017/03/16.
//  Copyright © 2017年 Hideaki Oshima. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    @IBOutlet weak var infoImageView: UIImageView!
    @IBOutlet weak var infoDescription: UILabel!
    @IBOutlet weak var infoPushedTime: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setInfoImageView()
        setInfoDescription()
        setInfoPushedTime()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setInfoImageView() {
        self.infoImageView.contentMode = UIViewContentMode.scaleAspectFill
        self.infoImageView.layer.masksToBounds = true
    }
    
    func setInfoDescription() {
        self.infoDescription.textColor = UIColor.black
        self.infoDescription.textAlignment = NSTextAlignment.left
        self.infoDescription.font = UIFont(name: "Helvetica-Light", size: 12)
    }
    
    func setInfoPushedTime() {
        self.infoPushedTime.textColor = UIColor.black
        self.infoPushedTime.textAlignment = NSTextAlignment.right
        self.infoPushedTime.font = UIFont(name: "Helvetica-Light", size: 9)
    }
    
}
