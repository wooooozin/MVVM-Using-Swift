//
//  WebService.swift
//  NewsAppUsingMVVM
//
//  Created by 효우 on 2022/09/06.
//

import Foundation

class WebService {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let decoder = JSONDecoder()
                do {
                    let articlesList = try decoder.decode(ArticleList.self, from: data)
                    completion(articlesList.articles)
//                    dump(articlesList.articles)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
