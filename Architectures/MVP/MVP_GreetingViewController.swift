//
//  MVP_GreetingViewController.swift
//  Architectures
//
//  Created by jiangbin on 16/3/28.
//  Copyright © 2016年 lechange. All rights reserved.
//

import  UIKit

class MVP_GreetingViewController: UIViewController, GreetingView {
    
    var presenter: GreetingViewPresenter!
    @IBOutlet var greetingLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MVP：1、创建模型实例
        let model = MMPerson(firstName: "Jim", lastName: "Green")
        
        //MVP:2、创建解析器
        presenter = GreetingPresenter(view: self, person: model)
    }
    
    @IBAction func tapSayHello(){
        //MVP：3、使用解析器进行展示
        self.presenter.showGreeting()
    }
    
    //Mark:Protocol GreetingView
    func setGreeting(greeting: String) {
        //MVP:4、实现GridView的协议
        self.greetingLabel?.text = greeting
    }
}
