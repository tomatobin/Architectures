//
//  ArrayDataSource.swift
//  Architectures
//
//  Created by jiangbin on 16/4/1.
//  Copyright © 2016年 lechange. All rights reserved.
//

import UIKit

typealias MMTableViewCellConfigureBlock = (AnyObject , AnyObject) -> Void

class MMArrayDataSource: NSObject,UITableViewDataSource{

    var items: NSArray?
    var cellIdentifier: String?
    var configureCellBlock: MMTableViewCellConfigureBlock?
    
    required init(items: NSArray, cellIdentifier: String, configureCellBlock: MMTableViewCellConfigureBlock){
        self.items = items
        self.cellIdentifier = cellIdentifier
        self.configureCellBlock = configureCellBlock
    }
    
    func itemAtIndexPath(indexPath: NSIndexPath)->AnyObject{
        return (self.items?.objectAtIndex(indexPath.row))!
    }
    
    //Mark::UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier!, forIndexPath: indexPath)
        let item = self.itemAtIndexPath(indexPath)
        self.configureCellBlock!(cell, item)
        return cell
    }
}
