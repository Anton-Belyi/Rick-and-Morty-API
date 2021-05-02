//
//  AllCharactersVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 13.04.2021.
//

import UIKit

class CharactersVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 25, bottom: 10, right: 25)
        layout.itemSize = CGSize(width: 160, height: 160)
        
        
        let collectionViewCharacters = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionViewCharacters.dataSource = self
        collectionViewCharacters.delegate = self
        collectionViewCharacters.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionViewCharacters.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        self.view.addSubview(collectionViewCharacters)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellCharacters = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cellCharacters.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return cellCharacters
    }

}


