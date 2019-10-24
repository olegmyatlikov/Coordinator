//
//  FirstTabCoorinator.swift
//  CombineTest
//
//  Created by Oleg on 10/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class FirstTabCoorinator: BaseCoordinator {
    
    let navigationController = UINavigationController()
    
    override func start() {
        let firstTabVC = FirstVC()
        firstTabVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 0)
        navigationController.setViewControllers([firstTabVC], animated: false)
    }

}
