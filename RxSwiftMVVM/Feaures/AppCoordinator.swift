//
//  AppCoordinator.swift
//  RxSwiftMVVM
//
//  Created by Baris Saraldi on 13.07.2021.
//

import UIKit


class AppCoordinator {
    
    private let window: UIWindow
    
    init (window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
