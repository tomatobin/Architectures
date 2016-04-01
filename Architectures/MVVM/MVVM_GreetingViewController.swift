//
//  MVVM_GreetingViewController.swift
//  Architectures
//
//  Created by jiangbin on 16/3/28.
//  Copyright © 2016年 lechange. All rights reserved.
//

import UIKit

class MVVM_GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel?
    
    var viewModel: GreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel!.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = MMPerson(firstName: "Jim", lastName: "Green")
        let model = GreetingViewModel(person: person)
        
        self.viewModel = model
    }

    @IBAction func tapSayHello(){
        self.viewModel.showGreeting()
    }
}
