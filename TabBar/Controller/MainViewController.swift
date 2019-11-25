//
//  ViewController.swift
//  TabBar
//
//  Created by Rustem Supayev on 25/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = .cyan
        setupTabBar()
        
    }

    func setupTabBar(){
        
        let feedController = createNavController(vc: FeedViewController(), selected: #imageLiteral(resourceName: "home-white"), unselected: #imageLiteral(resourceName: "home-black"))
        let searchController = createNavController(vc: SearchViewController(), selected: #imageLiteral(resourceName: "search-white"), unselected: #imageLiteral(resourceName: "search-black"))
        let addPostController = createNavController(vc: AddPostViewController(), selected: #imageLiteral(resourceName: "addPost-white"), unselected: #imageLiteral(resourceName: "addPost"))
        let likesController = createNavController(vc: LikesViewController(), selected: #imageLiteral(resourceName: "heart-white"), unselected: #imageLiteral(resourceName: "heart-black"))
        let profileController = createNavController(vc: ProfileViewController(), selected: #imageLiteral(resourceName: "profile-white"), unselected: #imageLiteral(resourceName: "profile-black"))
        
        viewControllers = [feedController, searchController,addPostController, likesController, profileController]
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 4,left: 0,bottom: -4,right: 0)
        }
        
    }
}

extension UITabBarController {
    
    func createNavController(vc: UIViewController, selected: UIImage, unselected: UIImage) -> UINavigationController {
        
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
    }
}

