//
//  FollowingTableViewController.swift
//  Aszoo_pages
//
//  Created by Hideaki Oshima on 2017/03/16.
//  Copyright © 2017年 Hideaki Oshima. All rights reserved.
//

import UIKit

class FollowingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "フォロー中"
        self.tableView.register(UINib(nibName: "FollowTableViewCell", bundle: nil), forCellReuseIdentifier: "FollowTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowTableViewCell", for: indexPath) as! FollowTableViewCell
        cell.followTableImage.image = UIImage(named: "hasegawa_jun.jpeg")
        cell.followTableUserName.text = "長谷川潤"
        cell.followTableUserID.text = "123456789"
        cell.followBtn.setTitle("フォロー中", for: UIControlState.normal)
        cell.followBtn.frame.size = CGSize(width: 100, height: 30)
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
