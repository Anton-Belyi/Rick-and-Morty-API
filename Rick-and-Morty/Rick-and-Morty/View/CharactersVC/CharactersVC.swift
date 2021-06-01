//
//  AllCharactersVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 13.04.2021.
//

import UIKit

class CharactersVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let model = [
        "Primer1",
        "Primer2",
        "Primer3",
        "Primer4",
        "Primer5",
        "Primer6",
        "Primer7",
        "Primer1",
        "Primer2",
        "Primer3",
        "Primer4",
        "Primer5",
        "Primer6",
        "Primer7",
        "Primer2",
        "Primer3",
        "Primer4",
        "Primer5",
        "Primer6",
        "Primer7"
    ]
    
    
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
        
        
        


//        let header = StretchyTableHeaderView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width))
//        header.imageView.image = #imageLiteral(resourceName: "head")
//        tableView.tableHeaderView = header
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerImage: UIImage = UIImage(named: "head")!
        let headerView = UIImageView(image: headerImage)
        return headerView
    
}
}


