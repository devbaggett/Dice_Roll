//
//  ViewController.swift
//  Dice Roll
//
//  Created by Devin Baggett on 5/14/18.
//  Copyright © 2018 devbaggett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    // diceArray contains image names of each die
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    // shows images instead of strings for image names
    let diceArrayImg = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
//        print(randomDiceIndex1, randomDiceIndex2)
        
        // randomize both dice images
        // Example 1:
        diceImageView1.image = diceArrayImg[randomDiceIndex1]
        // Example 2: instead of dice2 image: = UIImage(named: "dice2")
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    // enable shake motion
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

