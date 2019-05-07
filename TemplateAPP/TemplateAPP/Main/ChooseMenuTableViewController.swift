//
//  ChooseMenuTableViewController.swift
//  TemplateAPP
//
//  Created by Bob on 2019/5/7.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit

class ChooseMenuTableViewController: UITableViewController {

    let cellTitleList = ["哔哩哔哩动画iOS APP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = cellTitleList[indexPath.section]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
