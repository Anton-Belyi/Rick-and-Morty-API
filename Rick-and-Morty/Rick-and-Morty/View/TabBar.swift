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
        
        // Создаем экземпляры контроллеров
        let charactersVC = CharactersVC()
        let episodesVC = EpisodesVC()
        let searchVC = SearchVC()
        
        // Назначаем название заголовков
        charactersVC.title = "Персонажы"
        episodesVC.title = "Эпизоды"
        searchVC.title = "Поиск"
        
        // Назначение ViewControllers TabBar
        self.setViewControllers([charactersVC, episodesVC, searchVC], animated: false)
        
        // Назначение цветов ViewController
        charactersVC.view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        episodesVC.view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        searchVC.view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        // Проверка на наличие изображений
        guard let items = self.tabBar.items else { return }
        
        let images = ["monster", "ufo", "telescope"]
        
        for i in 0...2 {
            items[i].image = UIImage(named: images[i])
        }
        // Назначение цвета кнопкам TabBar
        self.tabBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
