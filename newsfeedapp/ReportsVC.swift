//
//  ViewController.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 12/7/19.
//  Copyright © 2019 Nana Aferi. All rights reserved.
//

import UIKit
import PKHUD

class ReportsVC: UIViewController {
    
   
    override func viewDidAppear(_ animated: Bool) {
        HUD.flash(.progress, delay: 3.0)
    }
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white //UIColor.lightGray
        //HUD.flash(.success, delay: 3.0)
    }
     

}

