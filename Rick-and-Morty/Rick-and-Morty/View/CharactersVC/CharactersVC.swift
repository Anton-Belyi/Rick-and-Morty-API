//
//  AllCharactersVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 13.04.2021.
//

import UIKit

class CharactersVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let example = [
        "Primer 1",
        "Primer 2",
        "Primer 3",
        "Primer 4",
        "Primer 5",
        "Primer 6",
        "Primer 7",
        "Primer 8",
        "Primer 9",
        "Primer 10",
        "Primer 11",
        "Primer 12",
        "Primer 13",
        "Primer 14",
        "Primer 15",
        "Primer 16",
        "Primer 17",
        "Primer 18",
        "Primer 19",
        "Primer 20",
        "Primer 21",
        
    ]
    // Создаем TableView
    private let tableView: UITableView = {
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
        let headerView = StretchyHeaderCharactersVC(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 250))
        headerView.imageView.image = UIImage(named: "morty")
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

extension CharactersVC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let headerView = self.tableView.tableHeaderView as! StretchyHeaderCharactersVC
        headerView.scrollViewDidScroll(scrollView: scrollView)
    }
}


