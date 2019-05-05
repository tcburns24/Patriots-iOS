//
//  ViewController.swift
//  Patriots2
//
//  Created by Thomas Burns on 5/5/19.
//  Copyright © 2019 Thomas Burns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.setGradientBackground(colorOne: PatsColors.patsBlue, colorTwo: UIColor(red: 10/255, green: 47/255, blue: 109/255, alpha: 1.0) )
        
        self.title = "New England Patriots | 6 Rings"
    }


}

