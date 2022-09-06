//
//  WebService.swift
//  NewsAppUsingMVVM
//
//  Created by 효우 on 2022/09/06.
//

import Foundation

class WebService {
    func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
            }
        }.resume()
    }
}
