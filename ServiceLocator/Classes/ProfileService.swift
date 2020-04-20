//
//  ProfileService.swift
//  ServiceLacator
//
//  Created by Dmitriy Soloshenko on 20.04.2020.
//  Copyright © 2020 Dmitriy Soloshenko. All rights reserved.
//

import UIKit

final class ProfileService: IService {
    
    private (set) var info = ProfileInfo()
    
    class var service: ProfileService {
        if let service: ProfileService = ServiceLocator.service() {
            return service
        }
        
        let service = ProfileService()
        ServiceLocator.addService(service)
        return service
    }

    func clear() {
        self.info = ProfileInfo()
    }

    func remove() {
        ServiceLocator.removeService(self)
    }
    
    func update(name: String) {
        self.info.name = name
    }
}

struct ProfileInfo {
    var name = ""
}

