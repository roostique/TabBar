//
//  Extension+TabBarController.swift
//  TabBar
//
//  Created by Rustem Supayev on 27/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

extension UITabBarController {
    
    func createNavController(vc: UIViewController, selected: UIImage, unselected: UIImage) -> UINavigationController {
        
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
        
    }
    
}
