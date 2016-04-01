//
//  GreetingViewModel.swift
//  Architectures
//
//  Created by jiangbin on 16/3/28.
//  Copyright © 2016年 lechange. All rights reserved.
//


class GreetingViewModel : GreetingViewModelProtocol {
    let person: MMPerson
    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    
    required init(person: MMPerson) {
        self.person = person
    }
    
    func showGreeting() {
        self.greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
    }
}