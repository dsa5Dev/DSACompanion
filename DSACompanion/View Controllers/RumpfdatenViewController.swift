//
//  RumpfdatenViewController.swift
//  DSACompanion
//
//  Created by Patrick Mondani on 18.03.18.
//  Copyright © 2018 dsa5dev. All rights reserved.
//

import UIKit

class RumpfdatenViewController: UIViewController {
    //MARK: Objects in view
    @IBOutlet weak var imageView_characterPic: UIImageView!
    @IBOutlet weak var wert_mut: UILabel!
    @IBOutlet weak var wert_klugheit: UILabel!
    @IBOutlet weak var wert_intuition: UILabel!
    @IBOutlet weak var wert_charisma: UILabel!
    @IBOutlet weak var wert_fingerfertigkeit: UILabel!
    @IBOutlet weak var wert_gewandheit: UILabel!
    @IBOutlet weak var wert_konstitution: UILabel!
    @IBOutlet weak var wert_koerperkraft: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //MARK: Logging.
        print("Rumpfdaten-View geladen")
        
        //MARK: Formating.
        
        //MARK: Charakterbild rund gestalten.
        imageView_characterPic.layer.cornerRadius = imageView_characterPic.frame.width/2
        imageView_characterPic.clipsToBounds = true
        
        //MARK: Eigenschaften mit farbigen Rahmen versehen.
        wert_mut.layer.borderWidth = 3.0
        wert_mut.layer.borderColor = UIColor.red.cgColor

        wert_klugheit.layer.borderWidth = 3.0
        wert_klugheit.layer.borderColor = UIColor.purple.cgColor
        
        wert_intuition.layer.borderWidth = 3.0
        wert_intuition.layer.borderColor = UIColor.green.cgColor
        
        wert_charisma.layer.borderWidth = 3.0
        wert_charisma.layer.borderColor = UIColor.darkGray.cgColor
        
        wert_fingerfertigkeit.layer.borderWidth = 3.0
        wert_fingerfertigkeit.layer.borderColor = UIColor.brown.cgColor
        
        wert_gewandheit.layer.borderWidth = 3.0
        wert_gewandheit.layer.borderColor = UIColor.blue.cgColor
        
        wert_konstitution.layer.borderWidth = 3.0
        wert_konstitution.layer.borderColor = UIColor.lightGray.cgColor
        
        wert_koerperkraft.layer.borderWidth = 3.0
        wert_koerperkraft.layer.borderColor = UIColor.orange.cgColor
    }
}
