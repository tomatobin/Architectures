//
//  GreetingViewPresenter.swift
//  Architectures
//
//  Created by jiangbin on 16/3/28.
//  Copyright © 2016年 lechange. All rights reserved.
//

import UIKit

protocol GreetingViewPresenter {
    init(view: GreetingView, person: MMPerson)
    func showGreeting()
}