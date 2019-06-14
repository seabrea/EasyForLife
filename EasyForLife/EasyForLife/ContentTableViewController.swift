//
//  ContentTableViewController.swift
//  EasyForLife
//
//  Created by Bob on 2019/6/14.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit

class ContentTableViewController: UITableViewController {
    
    var dataSource = [ContentDataModel]()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        dataSource = [ContentDataModel(),ContentDataModel(),ContentDataModel()]
        configureData()
    }
    
    private func configureData() {
        let list = NSArray(contentsOfFile: "ContentData.plist")
        print(list ?? [Any]())
    }
}

extension ContentTableViewController {
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ContentTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "ContentTableViewCell") as? ContentTableViewCell
        
        if indexPath.section % 2 == 0 {
            cell?.refreshCell(ContentTableViewCell.ContentCellType.reminder, "test reminder")
        }
        else {
            cell?.refreshCell(ContentTableViewCell.ContentCellType.note, "test note")
        }
        
        return cell ?? ContentTableViewCell()
    }
    
}
