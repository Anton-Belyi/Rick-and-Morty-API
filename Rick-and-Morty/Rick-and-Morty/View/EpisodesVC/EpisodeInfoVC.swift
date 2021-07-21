//
//  EpisodeInfoVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 18.07.2021.
//

import UIKit

class EpisodeInfoVC: UIViewController {
    
    var uiLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        view.addSubview(uiLabel)
        uiLabel.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        uiLabel.font = UIFont(name: "GillSans-SemiBold", size: 18)
        uiLabel.textAlignment = .center
        uiLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        uiLabel.layer.cornerRadius = 30
        uiLabel.layer.masksToBounds = true
        
        uiLabel.frame = CGRect(x: 20, y:20, width: 350, height: 60)
        
    }
}
