//
//  CoordinatorService.swift
//  ServiceLacator
//
//  Created by Dmitriy Soloshenko on 20.04.2020.
//  Copyright © 2020 Dmitriy Soloshenko. All rights reserved.
//

import UIKit

final class CoordinatorService: IService {
    
    private (set) var coordinator: MainCoordinator!
    
    var navController: UINavigationController {
        return self.coordinator.navigationController
    }
    
    class var service: CoordinatorService {
        if let service: CoordinatorService = ServiceLocator.service() {
            return service
        }
        
        let service = CoordinatorService()
        service.load()
        ServiceLocator.addService(service)
        return service
    }

    func clear() {
    }

    func remove() {
        ServiceLocator.removeService(self)
    }
    
    // MARK - Private
    private func load() {
        let nc                    = UINavigationController()
        nc.navigationBar.isHidden = true
        self.coordinator          = MainCoordinator(navigationController:nc)
    }
}

