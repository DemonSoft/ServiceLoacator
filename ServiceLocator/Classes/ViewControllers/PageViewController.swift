//
//  PageViewController.swift
//  ServiceLocator
//
//  Created by Dmitriy Soloshenko on 20.04.2020.
//  Copyright © 2020 Dmitriy Soloshenko. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    @IBOutlet private weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = ProfileService.service.info.name
    }


    @IBAction func finishAction(_ sender: UIButton) {
        CoordinatorService.service.coordinator.start()
    }
}

