//
//  TabBarController.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 13.04.2021.
//

import UIKit

// MARK: - TabBar

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
            createNavController(for: CharactersVC(), tittle: NSLocalizedString("All characters", comment: ""), image: UIImage(systemName: "person.3.fill")!),
            createNavController(for: EpisodesVC(), tittle: NSLocalizedString("All episodes", comment: ""), image: UIImage(systemName: "play.tv.fill")!),
            createNavController(for: SearchVC(), tittle: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!)
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
