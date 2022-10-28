//
//  Order.swift
//  CoffeeOrderProject
//
//  Created by 효우 on 2022/10/28.
//

import Foundation

enum CoffeeType: String, Codable {
    case cappuccino
    case latte
    case expresso
    case americano
    case longblack
}

enum CoffeSize: String, Codable {
    case samll
    case medium
    case large
}

struct Order: Codable {
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeSize
}
