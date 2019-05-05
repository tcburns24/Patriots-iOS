//
//  Superbowls ViewController.swift
//  Patriots2
//
//  Created by Thomas Burns on 5/5/19.
//  Copyright © 2019 Thomas Burns. All rights reserved.
//

import UIKit

let superBowlData = [
    "xxxvi": [
        "vs": "St. Louis Rams",
        "score": "20 – 17",
        "mvp": "Tom Brady",
        "location": "New Orleans, LA",
        "season": "2001",
        "roman": "XXXVI",
        "image": "sb36"
    ],
    "xxxviii": [
        "vs": "Carolina Panthers",
        "score": "32 – 29",
        "mvp": "Tom Brady",
        "location": "Houston, TX",
        "season": "2003",
        "roman": "XXXVIII",
        "image": "sb38"
    ],
    "xxxix": [
        "vs": "Philadelphia Eagles",
        "score": "24 – 21",
        "mvp": "Deion Branch",
        "location": "Jacksonville, FL",
        "season": "2004",
        "roman": "XXXIX",
        "image": "sb39"
    ],
    "xlix": [
        "vs": "Seattle Seahawks",
        "score": "28 – 24",
        "mvp": "Tom Brady",
        "location": "Glendale, AZ",
        "season": "2014",
        "roman": "XLIX",
        "image": "sb49"
    ],
    "li": [
        "vs": "Atlanta Falcons",
        "score": "34 – 28",
        "mvp": "Tom Brady",
        "location": "Houston, TX",
        "season": "2016",
        "roman": "LI",
        "image": "sb51"
    ],
    "liii": [
        "vs": "Los Angeles Rams",
        "score": "13 – 3",
        "mvp": "Julian Edelman",
        "location": "Atlanta, GA",
        "season": "2018",
        "roman": "LIII",
        "image": "sb53"
    ]
]

class Superbowls_ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientBackground(colorOne: PatsColors.patsRed, colorTwo: UIColor(red: 193/255, green: 124/255, blue: 124/255, alpha: 1.0) )
        
        self.title = "Superbowl Victories"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
