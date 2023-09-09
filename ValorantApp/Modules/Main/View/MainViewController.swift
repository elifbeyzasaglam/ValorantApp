//
//  MainViewController.swift
//  ValorantApp
//
//  Created by ELİF BEYZA SAĞLAM on 7.09.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet private weak var mainTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        registerCells()
    }
    
    private func setupTableView() {
        mainTableView.dataSource = self
    }
    
    private func registerCells() {

    }
    
}

extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}


