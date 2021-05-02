//
//  HeaderCharactersVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 01.05.2021.
//

import UIKit

class HeaderCharactersVC: UICollectionReusableView {
    
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        self.addSubview(imageView)
    }

    func setVieConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        self.imageView.topAnchor.constraint(equalTo: self.topAnchor),
                                        self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                        self.imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                        self.imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)])
    }
}


