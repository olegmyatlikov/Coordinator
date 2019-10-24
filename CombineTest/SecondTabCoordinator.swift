//
//  SecondTabCoordinator.swift
//  CombineTest
//
//  Created by Oleg on 10/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class SecondTabCoordinator: BaseCoordinator {
    
    let navigationController = UINavigationController()
    
    override func start() {
        let secondTabVC = SecondTabVC()
        secondTabVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        navigationController.setViewControllers([secondTabVC], animated: false)
    }

}
