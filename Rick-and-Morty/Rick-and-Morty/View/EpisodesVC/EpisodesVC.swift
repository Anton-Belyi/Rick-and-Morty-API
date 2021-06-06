//
//  Episodes.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 14.04.2021.
//

import UIKit

class EpisodesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let example = [
        "Episode 1",
        "Episode 2",
        "Episode 3",
        "Episode 4",
        "Episode 5",
        "Episode 6",
        "Episode 7",
        "Episode 8",
        "Episode 9",
        "Episode 10",
        "Episode 11",
        "Episode 12",
        "Episode 13",
        "Episode 14",
        "Episode 15",
        "Episode 16",
        "Episode 17",
        "Episode 18",
        "Episode 19",
        "Episode 20",
        "Episode 21",
        
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
        return example.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = example[indexPath.row]
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
