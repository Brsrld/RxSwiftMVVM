//
//  RestaurantViewmodel.swift
//  RxSwiftMVVM
//
//  Created by Baris Saraldi on 13.07.2021.
//

import Foundation

struct RestaurantViewmodel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
