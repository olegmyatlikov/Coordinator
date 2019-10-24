//
//  ThirdTabCoordinator.swift
//  CombineTest
//
//  Created by Oleg on 10/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class ThirdTabCoordinator: BaseCoordinator {
    
    let navigationController = UINavigationController()
    
    override func start() {
        let thirdTabVC = ThirdTabVC()
        thirdTabVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        navigationController.setViewControllers([thirdTabVC], animated: false)
    }

}
