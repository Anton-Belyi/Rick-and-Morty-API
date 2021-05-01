//
//  HeaderCharactersVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 01.05.2021.
//

import UIKit

class HeaderCharactersVC: UICollectionReusableView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
