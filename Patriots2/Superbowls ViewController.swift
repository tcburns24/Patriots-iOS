//
//  Superbowls ViewController.swift
//  Patriots2
//
//  Created by Thomas Burns on 5/5/19.
//  Copyright © 2019 Thomas Burns. All rights reserved.
//

import UIKit

let superBowlData = [
    [
        "vs": "St. Louis Rams",
        "patsScore": "20",
        "oppScore": "17",
        "mvp": "Tom Brady",
        "location": "New Orleans, LA",
        "season": "2001",
        "roman": "XXXVI",
        "image": "sb36",
        "oppImage": "rams",
        "bgImage": "sbBG36",
        "youtube": "https://www.youtube.com/watch?v=_8c3Z4nZwtE"
    ],
    [
        "vs": "Carolina Panthers",
        "patsScore": "32",
        "oppScore": "29",
        "mvp": "Tom Brady",
        "location": "Houston, TX",
        "season": "2003",
        "roman": "XXXVIII",
        "image": "sb38",
        "oppImage": "panthers",
        "bgImage": "sbBG38",
        "youtube": "https://www.youtube.com/watch?v=xK_2j0CDNFo"
    ],
    [
        "vs": "Philadelphia Eagles",
        "patsScore": "24",
        "oppScore": "21",
        "mvp": "Deion Branch",
        "location": "Jacksonville, FL",
        "season": "2004",
        "roman": "XXXIX",
        "image": "sb39",
        "oppImage": "eagles",
        "bgImage": "sbBG39",
        "youtube": "https://www.youtube.com/watch?v=Zvg6b6q1s-Y"
    ],
    [
        "vs": "Seattle Seahawks",
        "patsScore": "28",
        "oppScore": "24",
        "mvp": "Tom Brady",
        "location": "Glendale, AZ",
        "season": "2014",
        "roman": "XLIX",
        "image": "sb49",
        "oppImage": "seahawks",
        "bgImage": "sbBG49",
        "youtube": "https://www.youtube.com/watch?v=DKvXgZWfn14"
    ],
    [
        "vs": "Atlanta Falcons",
        "patsScore": "34",
        "oppScore": "28",
        "mvp": "Tom Brady",
        "location": "Houston, TX",
        "season": "2016",
        "roman": "LI",
        "image": "sb51",
        "oppImage": "falcons",
        "bgImage": "sbBG51",
        "youtube": "https://www.youtube.com/watch?v=016LXFHpFCk"
    ],
    [
        "vs": "Los Angeles Rams",
        "patsScore": "13",
        "oppScore": "3",
        "mvp": "Julian Edelman",
        "location": "Atlanta, GA",
        "season": "2018",
        "roman": "LIII",
        "image": "sb53",
        "oppImage": "rams",
        "bgImage": "sbBG53",
        "youtube": "https://www.youtube.com/watch?v=usw9WiShXEs"
    ]
]

var sbIndex = 0

class Superbowls_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var superBowlsTableController: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superBowlData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let superBowlCell = tableView.dequeueReusableCell(withIdentifier: "superBowlCell", for: indexPath)
        
        superBowlCell.textLabel?.text = superBowlData[indexPath.row]["roman"]
        
        superBowlCell.detailTextLabel?.text = "\(superBowlData[indexPath.row]["season"]!) • vs \(superBowlData[indexPath.row]["vs"]!)"
        
        superBowlCell.imageView?.image = UIImage(named: superBowlData[indexPath.row]["image"]!)
        
        superBowlCell.accessoryType = .disclosureIndicator
        
        return superBowlCell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sbIndex = indexPath.row
        performSegue(withIdentifier: "seeSuperbowls", sender: self)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        superBowlsTableController.delegate = self
        superBowlsTableController.dataSource = self
        
        view.setGradientBackground(colorOne: PatsColors.patsRed, colorTwo: UIColor(red: 193/255, green: 124/255, blue: 124/255, alpha: 1.0) )
        
        self.title = "Superbowl Victories"
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
