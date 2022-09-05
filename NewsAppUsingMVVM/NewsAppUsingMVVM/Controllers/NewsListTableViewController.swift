//
//  NewsListTableViewController.swift
//  NewsAppUsingMVVM
//
//  Created by 효우 on 2022/09/05.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
}

extension NewsListTableViewController {
    private func setupUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
