//
//  CharactersCollectionViewCell.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 19.04.2021.
//

import UIKit

class CharactersCollectionViewCell: UICollectionViewCell {
    static let idCell = "CharactersCollectionViewCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
