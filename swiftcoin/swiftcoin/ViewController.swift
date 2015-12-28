//
//  ViewController.swift
//  swiftcoin
//
//  Created by Gianni Settino on 2015-12-28.
//  Copyright © 2015 Milton and Parc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.setTitle("GENERATE", forState: .Normal)
        button.addTarget(self, action: "buttonTapped", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.sizeToFit()
        button.center = view.center
    }
    
    func buttonTapped() {
        print(Bitcoin.newPrivateKey())
    }
}

