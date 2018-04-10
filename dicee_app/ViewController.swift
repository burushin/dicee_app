//
//  ViewController.swift
//  dicee_app
//
//  Created by Sheraz Karim on 4/9/18.
//  Copyright © 2018 Sheraz Karim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1ImagView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    var dice1Index: Int = 0
    var dice2Index: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    func updatedDiceImage(){
        
        dice1Index = Int(arc4random_uniform(6))
        dice2Index = Int(arc4random_uniform(6))
        
        dice1ImagView.image = UIImage(named: diceArray[dice1Index])
        dice2ImageView.image = UIImage(named: diceArray[dice2Index])
        
    }
    
    @IBAction func tapToRoll(_ sender: UIButton) {
        
        updatedDiceImage()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedDiceImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

