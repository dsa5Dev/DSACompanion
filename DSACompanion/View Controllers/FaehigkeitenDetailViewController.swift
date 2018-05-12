//
//  FaehigkeitenDetailViewController.swift
//  DSACompanion
//
//  Created by Patrick Mondani on 12.05.18.
//  Copyright © 2018 dsa5dev. All rights reserved.
//

import UIKit

class FaehigkeitenDetailViewController: UIViewController {

    // Fähigkeit die in der View im Detail angezeigt werden soll.
    var faehigkeit: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = faehigkeit
    }
}
