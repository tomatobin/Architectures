//
//  LightRootViewController.swift
//  Architectures
//
//  Created by jiangbin on 16/4/1.
//  Copyright © 2016年 lechange. All rights reserved.
//

import UIKit

class LightRootViewController: UIViewController {
    var arrayDataSource: MMArrayDataSource!
    @IBOutlet var tableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "LightViewController"
        self.setupTableView()
    }
    
    func setupTableView(){
        let configueCell: MMTableViewCellConfigureBlock = {(cell: AnyObject, text: AnyObject) in
            let tableCell = cell as! UITableViewCell
            let cellText = text as! String
            tableCell.textLabel?.text = cellText
        }
        
        let dataSource = ["1", "2", "3", "4"]
        self.arrayDataSource = MMArrayDataSource.init(items: dataSource,
                                                      cellIdentifier: "MyTestCell",
                                                      configureCellBlock: configueCell)
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyTestCell")
        self.tableView?.dataSource = self.arrayDataSource
    }
}
