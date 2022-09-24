//
//  Article.swift
//  NewsAppUsingMVVM
//
//  Created by 효우 on 2022/09/24.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
