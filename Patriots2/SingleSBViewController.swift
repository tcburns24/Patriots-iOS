//
//  SingleSBViewController.swift
//  Patriots2
//
//  Created by Thomas Burns on 5/6/19.
//  Copyright © 2019 Thomas Burns. All rights reserved.
//

import UIKit

class SingleSBViewController: UIViewController {
    
    @IBOutlet weak var sbLogo: UIImageView!
    @IBOutlet weak var oppLogo: UIImageView!
    @IBOutlet weak var season: UILabel!
    @IBOutlet weak var finalSCore: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var mvp: UILabel!
    @IBOutlet weak var sbBG: UIImageView!
    
    
    @IBOutlet weak var youtubeVid: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sbLogo.image = UIImage(named: superBowlData[sbIndex]["image"]!)
        oppLogo.image = UIImage(named: superBowlData[sbIndex]["oppImage"]!)
        finalSCore.text = "\(superBowlData[sbIndex]["patsScore"]!) — \(superBowlData[sbIndex]["oppScore"]!)"
        season.text = superBowlData[sbIndex]["season"]!
        location.text = superBowlData[sbIndex]["location"]!
        mvp.text = superBowlData[sbIndex]["mvp"]!
        sbBG.image = UIImage(named: superBowlData[sbIndex]["bgImage"]!)
        sbBG.alpha = 0.23
        
        getVideoCode(videoCode: superBowlData[sbIndex]["youtube"]!)
    }
    
    func getVideoCode(videoCode: String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        youtubeVid.loadRequest(URLRequest(url: url!))
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
