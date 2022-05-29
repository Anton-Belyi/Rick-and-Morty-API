//
//  AllCharactersVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 13.04.2021.
//

import UIKit

class CharactersVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let flowLayout = CollectionViewFlowLayout()
    
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    var item: [Result] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Настройка ячеек
        flowLayout.scrollDirection = .vertical
        flowLayout.itemSize = CGSize(width: 150, height: 150)
        flowLayout.minimumLineSpacing = 35.0
        flowLayout.sectionInset = UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
        collectionView.collectionViewLayout = flowLayout
        // Регистрация Header
        collectionView.register(CharactersStretchyHeaderCharacters.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView")
        // Регистрация Cell
        collectionView.register(CharactersCollectionViewCell.self, forCellWithReuseIdentifier: CharactersCollectionViewCell.identifier)
        // Настройка CollectionView
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        //
        CharacterResponse.getEpisodesJSON { result in
            self.item = result.results
        }
    }
    // Переиспользование Header
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView", for: indexPath) as? CharactersStretchyHeaderCharacters {
            // Добавляем изображение в Header
            headerView.imageView.image = #imageLiteral(resourceName: "charactersheader")
            return headerView
        }
        return UICollectionReusableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CharactersCollectionViewCell.identifier, for: indexPath) as! CharactersCollectionViewCell
        let item = item[indexPath.row].image
        
        cell.fill(image: item)
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true

        return cell
    }
}
// Подключаем Header
extension CharactersVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.collectionView.frame.size.width, height: 250)
    }
}

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
