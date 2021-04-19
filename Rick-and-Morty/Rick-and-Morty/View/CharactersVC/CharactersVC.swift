//
//  AllCharactersVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 13.04.2021.
//

import UIKit

class CharactersVC: UIViewController {
    
    private var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: .zero,
                                          collectionViewLayout: layout)
        guard let collectionView = collectionView else { return }
        collectionView.register(CharactersCollectionViewCell.self, forCellWithReuseIdentifier: CharactersCollectionViewCell.idCell)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
        
    }
}

extension CharactersVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CharactersCollectionViewCell.idCell, for: indexPath)
        
        return cell
    }
    
    
}
