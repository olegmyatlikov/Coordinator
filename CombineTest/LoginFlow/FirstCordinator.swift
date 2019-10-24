//
//  FirstCordinator.swift
//  CombineTest
//
//  Created by Oleg on 9/2/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class FirstCoordinator: BaseCoordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let viewModel = FirstViewModel(cordinator: self)
        let firstVC = FirstViewController(viewModel: viewModel)
        navigationController?.pushViewController(firstVC, animated: true)
    }
    
}

extension FirstCoordinator: FirstViewModelNavigationDeleagate {
    
    func onNext() {
        print("on next")
    }
    
    func isFinished() {
        print("on complite")
        isCompleted?()
    }
    
}
