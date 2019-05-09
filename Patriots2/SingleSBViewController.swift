//
//  SingleSBViewController.swift
//  Patriots2
//
//  Created by Thomas Burns on 5/6/19.
//  Copyright © 2019 Thomas Burns. All rights reserved.
//

import UIKit

class SingleSBViewController: UIViewController {
    
    @IBOutlet weak var oppLogo: UIImageView!
    @IBOutlet weak var patsScore: UILabel!
    @IBOutlet weak var oppScore: UILabel!
    @IBOutlet weak var season: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var mvp: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        oppLogo.image = UIImage(named: superBowlData[sbIndex]["image"]!)
        patsScore.text = superBowlData[sbIndex]["patsScore"]!
        oppScore.text = superBowlData[sbIndex]["oppScore"]!
        season.text = superBowlData[sbIndex]["season"]!
        location.text = superBowlData[sbIndex]["location"]!
        mvp.text = superBowlData[sbIndex]["mvp"]!
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
