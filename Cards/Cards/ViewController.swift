//
//  ViewController.swift
//  Cards
//
//  Created by Jayakumar Jayaraman on 25/01/2017.
//  Copyright © 2017 jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var leftCardOutlet: UIImageView!
    @IBOutlet weak var leftScoreOutlet: UILabel!
    var leftScore = 0

    @IBOutlet weak var rightCardOutlet: UIImageView!
    @IBOutlet weak var rightScoreOutlet: UILabel!
    var rightScore = 0
    

    var cards = ["card2", "card3", "card4", "card5", "card6","card7","card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(sender: UIButton) {
        print("deal tapped")
        
        let leftCardIndex = Int (arc4random_uniform(12))
        leftCardOutlet.image = UIImage(named: cards[leftCardIndex])
        
        let rightCardIndex = Int(arc4random_uniform(12));
        rightCardOutlet.image = UIImage(named: cards[rightCardIndex])
    
        if(leftCardIndex > rightCardIndex) {
            leftScore += 1
        }else if leftCardIndex == rightCardIndex {
            
        } else {
          // rightScore += 1
        }
        
        leftScoreOutlet.text = String(leftScore)
        rightScoreOutlet.text = String (rightScore)
    }
}

