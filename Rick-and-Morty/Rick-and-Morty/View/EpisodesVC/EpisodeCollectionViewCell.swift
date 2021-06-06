//
//  EpisodeCollectionViewCell.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 03.06.2021.
//

import UIKit

class EpisodeCollectionViewCell: UICollectionViewCell {
    static var identifier: String = "EpisodeCollectionViewCell"
    weak var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let textLabel = UILabel(frame: .zero)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(textLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
