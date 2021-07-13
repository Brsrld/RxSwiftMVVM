//
//  Restaurant.swift
//  RxSwiftMVVM
//
//  Created by Baris Saraldi on 13.07.2021.
//

import Foundation

struct Restaurant: Codable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String,Codable {
    case Adiyaman
    case Sanliurfa
    case Iskenderun
}
