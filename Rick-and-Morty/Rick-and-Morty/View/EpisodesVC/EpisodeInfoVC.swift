//
//  EpisodeInfoVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 18.07.2021.
//

import UIKit

class EpisodeInfoVC: UINavigationController {
    
    let uiLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
    
        
        uiLabel.text = "Информация о эпизоде"
        view.addSubview(uiLabel)
        uiLabel.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        uiLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 60)
        
    }
}
