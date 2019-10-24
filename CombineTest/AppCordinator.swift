//
//  LaunchCordinator.swift
//  CombineTest
//
//  Created by Oleg on 9/2/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

final class AppCordinator: BaseCoordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        // preparing root view
        let navigationController = UINavigationController()
        let firstCoordinator = FirstCoordinator(navigationController: navigationController)

        // store child coordinator
        self.store(coordinator: firstCoordinator)
        firstCoordinator.start()

        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        // detect when free it
        firstCoordinator.isCompleted = { [weak self, weak firstCoordinator] in
            let mainCoordinator = MainCoordinator(navigationController: navigationController)
            self?.store(coordinator: mainCoordinator)
            mainCoordinator.start()
            
            if let coordinator = firstCoordinator {
                self?.free(coordinator: coordinator)
            }
        }
    }
}

