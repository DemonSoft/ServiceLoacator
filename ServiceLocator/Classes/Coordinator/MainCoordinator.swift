//
//  MainCoordinator.swift
//  ServiceLocator
//
//  Created by Dmitriy Soloshenko on 20.04.2020.
//  Copyright © 2020 Dmitriy Soloshenko. All rights reserved.
//

import UIKit

protocol ICoordinatable {
    var coordinator: MainCoordinator? { get set}
}

class MainCoordinator: Coordinator
{
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start()
    {
        let vc = MainCoordinator.controllerFromStoryboard("StartViewController", "Main")
        self.navigationController.setViewControllers([vc], animated: false)
    }
    
    func startPageController()
    {
        let vc = MainCoordinator.controllerFromStoryboard("PageViewController", "Main")
        self.navigationController.setViewControllers([vc], animated: true)
    }

    private class func controllerFromStoryboard(_ controllerName: String, _ storyboardName: String) -> UIViewController {
           let storyboard = UIStoryboard.init(name: storyboardName, bundle: nil)
           return storyboard.instantiateViewController(withIdentifier: controllerName)
       }
}

