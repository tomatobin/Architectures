//
//  ViewController.swift
//  Architectures
//
//  Created by jiangbin on 16/3/28.
//  Copyright © 2016年 lechange. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {
    private var person: MMPerson!
    @IBOutlet var greetingLabel: UILabel?
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MVC：1、创建模型实例
        let model = MMPerson(firstName: "Jim", lastName: "Green")
        self.person = model
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapSayHello(){
        
        //MVC:2、点击方法里面，进行数据的处理
        //3、展示数据
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.greetingLabel?.text = greeting
    }
    
    
//    let alert = UIAlertController(title: "", message:greeting, preferredStyle: .Alert)
//    self.presentViewController(alert, animated: true, completion: nil)
//    let action =  UIAlertAction(title: "OK", style: .Default, handler:nil)
//    alert.addAction(action)
}

