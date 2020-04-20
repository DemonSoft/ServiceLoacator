//
//  StartViewController.swift
//  ServiceLocator
//
//  Created by Dmitriy Soloshenko on 20.04.2020.
//  Copyright © 2020 Dmitriy Soloshenko. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet private weak var nameField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.text = ProfileService.service.info.name
    }

    @IBAction func startAction(_ sender: UIButton) {
        ProfileService.service.update(name: self.nameField.text ?? "")
        CoordinatorService.service.coordinator.startPageController()
    }

}

