//
//  ViewModel.swift
//  RxSwiftMVVM
//
//  Created by Baris Saraldi on 13.07.2021.
//

import Foundation
import RxSwift

final class ViewModel {
    let title = "Restaurants"
    
    private let service: ServiceProtocol
    
    init(service: ServiceProtocol = Service()) {
        self.service = service
    }
    
    func fetchViewModel() -> Observable<[RestaurantViewmodel]> {
        service.fetchData().map { $0.map { RestaurantViewmodel(restaurant: $0)}}
    }
}
