//
//  FirstViewModel.swift
//  CombineTest
//
//  Created by Oleg on 8/31/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import Foundation
import Combine

protocol FirstViewModelNavigationDeleagate: class {
    func onNext()
    func isFinished()
}

class FirstViewModel {
    
    weak var navigationDelegate: FirstViewModelNavigationDeleagate?
    
    let subject = PassthroughSubject<Int, Never>()
    
    var conactable: Publishers.MakeConnectable<PassthroughSubject<Int, Never>> {
        return subject.makeConnectable()
    }
    
    init(cordinator: FirstViewModelNavigationDeleagate?) {
        self.navigationDelegate = cordinator
    }

}
