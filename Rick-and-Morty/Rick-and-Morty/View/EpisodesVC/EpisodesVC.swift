//
//  EpisodesVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 14.04.2021.
//

import UIKit

class EpisodesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let episodes: [Episodes] = [ Episodes(name: "123")
    ]
//     Создаем TableView
    let tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        //Настраиваем Header
        let headerView = StretchyEpisodesHeaderVC(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 250))
        headerView.imageView.image = UIImage(named: "charactersheader")
        self.tableView.tableHeaderView = headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        let episode = episodes[indexPath.row]
//        cell.textLabel?.text = episodes.n
        return cell
    }
    
}

extension EpisodesVC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let headerView = self.tableView.tableHeaderView as! StretchyEpisodesHeaderVC
        headerView.scrollViewDidScroll(scrollView: scrollView)
    }
}


//extension CharactersVC: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: self.collectionView.frame.size.width, height: 250)
//    }
//}
