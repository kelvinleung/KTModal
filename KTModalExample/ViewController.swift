//
//  ViewController.swift
//  KTModalExample
//
//  Created by Kelvin Leung on 29/10/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit
import KTModal

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func presentModal(_ sender: UIButton) {
        let modal = KTModalView(frame: view.bounds)
        let statusImage = UIImage(named: "download") ?? UIImage()
        modal.set(image: statusImage)
        modal.set(headline: "Downloading")
        view.addSubview(modal)
    }
    
}
