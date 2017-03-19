//
//  InfoListTableViewController.swift
//  Aszoo_pages
//
//  Created by Hideaki Oshima on 2017/03/16.
//  Copyright © 2017年 Hideaki Oshima. All rights reserved.
//

import UIKit

class InfoListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "お知らせ"
        
        //cellの登録
        self.tableView.register(UINib(nibName: "InfoTableViewCell", bundle: nil), forCellReuseIdentifier: "InfoTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTableViewCell", for: indexPath) as! InfoTableViewCell
        cell.infoImageView.image = UIImage(named: "hasegawa_jun.jpeg")
        cell.infoPushedTime.text = "3分前"
        cell.infoDescription.text = "長谷川潤があなたの写真について「いいね！」と言っています"
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
