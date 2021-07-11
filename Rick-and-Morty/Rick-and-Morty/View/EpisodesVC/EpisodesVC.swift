//
//  EpisodesVC.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 14.04.2021.
//

import UIKit
class EpisodesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var nameEpisode: String = ""
    
//     Создаем TableView
    let tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    //MARK: ViewDidLoad
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
        // Подгружаем JSON
        getEpisodesJSON()
    }
    //
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = nameEpisode
        return cell
    }
    // MARK: ParseJSON
    func getEpisodesJSON() {
        let urlString = "https://rickandmortyapi.com/api/episode"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            do {
                guard let data = data else { return }
                let result = try JSONDecoder().decode(EpisodesData.self, from: data)
                DispatchQueue.main.async {
                    self.nameEpisode = result.results[0].name
                    self.tableView.reloadData()
                }
            } catch {
                print(error)
            }
        }.resume()
    }
    
}

extension EpisodesVC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let headerView = self.tableView.tableHeaderView as! StretchyEpisodesHeaderVC
        headerView.scrollViewDidScroll(scrollView: scrollView)
    }
    
}

