//
//  Episodes.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 14.04.2021.
//

import UIKit

class EpisodesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        return tableView
    }()
    
    let episodes = ["Rick",
                   "Morty",
                   "Rick",
                   "Rick",
                   "Morty",
                   "Rick",
                   "Morty",
                   "Rick",
                   "Morty",
                   "Rick",
                   "Morty",
                   "Morty",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        // Добавляем Header
        let header = EpisodesHeaderTable(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width ))
        header.imageView.image = UIImage(named: "ufo")
        tableView.tableHeaderView = header
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = episodes[indexPath.row]
        cell.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        cell.textLabel?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return cell
    }

}
