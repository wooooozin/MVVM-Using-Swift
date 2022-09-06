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
        setup()
    }
    
}

extension NewsListTableViewController {
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        guard let url = URL(string: AppKey.BASE_URL) else { return }
        WebService().getArticles(url: url) { _ in
            
        }
    }
}
