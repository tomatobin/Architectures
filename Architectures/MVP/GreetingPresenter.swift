//
//  GreetingPresenter.swift
//  Architectures
//
//  Created by jiangbin on 16/3/28.
//  Copyright © 2016年 lechange. All rights reserved.
//  Presenter 中没有任何页面布局的代码，但是 Presenter 有责任通过数据和状态来更新 View

import UIKit

//实现定义的协议
class GreetingPresenter: GreetingViewPresenter {
    
    unowned let view : GreetingView
    let person: MMPerson
    
    //MARK: Protocol GreetingViewPreseneter
    required init(view: GreetingView, person: MMPerson) {
        self.view = view
        self.person = person
    }
    
    //更新Viewgmw
    func showGreeting()  {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting)
    }
}
