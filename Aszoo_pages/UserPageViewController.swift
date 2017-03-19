//
//  UserPageViewController.swift
//  Aszoo_pages
//
//  Created by Hideaki Oshima on 2017/03/17.
//  Copyright © 2017年 Hideaki Oshima. All rights reserved.
//

import UIKit

class UserPageViewController: UIViewController {
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var userNickname: UILabel!
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var userInfoBackground: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "長谷川潤"
        self.view.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        setUserInfoBackground()
        setUserImage()
        setUserNickname()
        setUserId()
        makePostCountBtn(x: 0)
        makePostCountBtn(x: Int(self.view.frame.width / 3))
        makePostCountBtn(x: Int((self.view.frame.width / 3) * 2))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUserInfoBackground() {
        self.userInfoBackground.backgroundColor = UIColor.white
    }
    
    func setUserImage() {
        UserImage.image = UIImage(named: "hasegawa_jun.jpeg")
    }
    
    func setUserNickname() {
        self.userNickname.text = "じゅん"
    }
    
    func setUserId() {
        self.userId.text = "123456789"
    }
    
// ---------部品生成のメソッド-------------

    func makePostCountBtn(x: Int) {
        let postCountBtn = UIButton()
        postCountBtn.backgroundColor = UIColor.cyan
        postCountBtn.frame = CGRect(x: x, y: 180, width: Int(self.view.frame.width / 3), height: 70)
        self.userInfoBackground.addSubview(postCountBtn)
    }
}
