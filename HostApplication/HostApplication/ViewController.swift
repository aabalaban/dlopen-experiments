//
//  ViewController.swift
//  HostApplication
//
//  Created by Alexander Balaban on 08/08/2019.
//  Copyright © 2019 All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFramework(name: "RandomFramework")
        loadFramework(name: "NonRandomFramework")
    }
}
