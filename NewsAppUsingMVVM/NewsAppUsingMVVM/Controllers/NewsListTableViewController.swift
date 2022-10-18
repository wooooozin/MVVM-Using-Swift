//
//  NewsListTableViewController.swift
//  NewsAppUsingMVVM
//
//  Created by 효우 on 2022/09/05.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
}

extension NewsListTableViewController {
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        guard let url = URL(string: AppKey.BASE_URL) else { return }
        WebService().getArticles(url: url) { article in
            guard let article = article else { return }
            self.articleListVM = ArticleListViewModel(article: article)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        guard let numberOfSection = self.articleListVM?.numberOfsection else { return 0 }
        return self.articleListVM == nil ? 0 : numberOfSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = self.articleListVM?.numberOfRowsSection(section) else { return 0 }
        return count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTabeleViewModelCell", for: indexPath) as? ArticleTabeleViewModelCell else {
            fatalError("Cell not Found")
        }
        let articleVM = self.articleListVM?.articleAtIndex(indexPath.row)
        cell.titleLabel.text = articleVM?.title
        cell.descriptionLabel.text = articleVM?.description
        return cell
    }
}
