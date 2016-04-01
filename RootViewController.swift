//
//  RootViewController.swift
//  Architectures
//
//  Created by jiangbin on 16/3/28.
//  Copyright © 2016年 lechange. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {
    private var dataSource = ["PushMVC", "PushMVP", "PushMVVM", "LightViewController"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Architecture Patterns"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("MyTestCell")
        if (cell == nil) {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: "MyTestCell")
        }
        
        cell?.textLabel?.text = self.dataSource[indexPath.row]
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let identifier = self.dataSource[indexPath.row]
        self.performSegueWithIdentifier(identifier, sender: nil)
    }
}
