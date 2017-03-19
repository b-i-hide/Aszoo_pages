//
//  FollowTableViewCell.swift
//  Aszoo_pages
//
//  Created by Hideaki Oshima on 2017/03/16.
//  Copyright © 2017年 Hideaki Oshima. All rights reserved.
//

import UIKit

class FollowTableViewCell: UITableViewCell {
    @IBOutlet weak var followTableImage: UIImageView!
    @IBOutlet weak var followTableUserName: UILabel!
    @IBOutlet weak var followTableUserID: UILabel!
    @IBOutlet weak var followBtn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setFlollowTableImage()
        setFollowTableUserName()
        setFollowUserID()
        setFollowBtn()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setFlollowTableImage() {
        self.followTableImage.contentMode = UIViewContentMode.scaleAspectFill
        self.followTableImage.layer.masksToBounds = true
    }
    
    func setFollowTableUserName() {
        self.followTableUserName.textColor = UIColor.black
        self.followTableUserName.textAlignment = NSTextAlignment.left
        self.followTableUserName.font = UIFont(name: "Helvetica-Light", size: 17)
    }
    
    func setFollowUserID() {
        self.followTableUserID.textColor = UIColor.black
        self.followTableUserID.textAlignment = NSTextAlignment.left
        self.followTableUserID.font = UIFont(name: "Helvetica-Light", size: 14)
    }
    
    func setFollowBtn() {
        self.followBtn.tintColor = UIColor.black
    }
}
