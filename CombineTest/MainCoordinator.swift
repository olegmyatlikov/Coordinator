//
//  MainCoordinator.swift
//  CombineTest
//
//  Created by Oleg on 10/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class MainCoordinator: BaseCoordinator {
    
    var navigationController: UINavigationController?
    let tabBarController = UITabBarController()
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let firstCoordinator = FirstTabCoorinator()
        store(coordinator: firstCoordinator)
        firstCoordinator.start()
        
        
        let secondCoordinator = SecondTabCoordinator()
        store(coordinator: secondCoordinator)
        secondCoordinator.start()
        
        let thirdCoordinator = ThirdTabCoordinator()
        store(coordinator: thirdCoordinator)
        thirdCoordinator.start()
        
        tabBarController.viewControllers = [firstCoordinator.navigationController,
                                            secondCoordinator.navigationController,
                                            thirdCoordinator.navigationController]
        
        navigationController?.setViewControllers([tabBarController], animated: true)
    }
    
}
