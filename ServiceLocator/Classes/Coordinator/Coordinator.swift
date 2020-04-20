//
//  Coordinator.swift
//  ServiceLacator
//
//  Created by Dmitriy Soloshenko on 20.04.2020.
//  Copyright © 2020 Dmitriy Soloshenko. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

