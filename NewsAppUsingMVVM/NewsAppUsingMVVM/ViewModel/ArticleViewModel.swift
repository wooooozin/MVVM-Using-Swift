//
//  ArticleViewModel.swift
//  NewsAppUsingMVVM
//
//  Created by 효우 on 2022/10/17.
//

import Foundation

struct ArticleListViewModel {
    let article: [Article]
}

extension ArticleListViewModel {
    var numberOfsection: Int {
        return 1
    }
    
    func numberOfRowsSection(_ section: Int) -> Int {
        return self.article.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.article[index]
        return ArticleViewModel(article)
    }
}


struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
