//
//  TabBarController.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 13.04.2021.
//

import UIKit

// MARK: - NavigationController

class TabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: MainVC(), tittle: NSLocalizedString("All characters", comment: ""), image: UIImage(systemName: "person.3.fill")!),
            createNavController(for: MainVC(), tittle: NSLocalizedString("All episodes", comment: ""), image: UIImage(systemName: "play.tv.fill")!),
            createNavController(for: MainVC(), tittle: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!)
        ]
    }
    fileprivate func createNavController(for rootViewController: UIViewController, tittle: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
}
