//
//  ViewController.swift
//  sk8dice
//
//  Created by Phillip Park on 3/4/19.
//  Copyright © 2019 Phillip Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var roll: UIButton!
    var stance : [String] = ["Regular", "Switch", "Nollie", "Fakie"]
    var spin : [String] = ["180", "360", "X", "X"]
    var direction : [String] = ["Frontside", "Backside", "X", "X"]
    var flip : [String] = ["Kickflip", "Heelflip", "X", "X"]
    @IBOutlet weak var trickName: UILabel!
    @IBOutlet weak var stanceButton: UIButton!
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var directionButton: UIButton!
    @IBOutlet weak var flipButton: UIButton!
    
    override func viewDidLoad() {
        // Background style
        self.view.backgroundColor = UIColor(red:0.99, green:1.00, blue:0.99, alpha:1.0)
        style()
    }
    
    @IBAction func rollDice(_ sender: UIButton) {
        rollDiceLogic()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDiceLogic()
    }
    
    func rollDiceLogic() {
        // random numbers
        let number = Int.random(in: 0 ..< 4)
        let number2 = Int.random(in: 0 ..< 4)
        let number3 = Int.random(in: 0 ..< 4)
        let number4 = Int.random(in: 0 ..< 4)
        
        // stance label
        let stanceLabel : String = self.stance[number]
        self.stanceButton.setTitle(stanceLabel, for: .normal)
        
        // trick string
        var name : String = stanceLabel
        
        // spin label
        let spinLabel : String = self.spin[number2]
        self.spinButton.setTitle(spinLabel, for: .normal)
        
        // direction label
        let directionLabel : String = self.direction[number3]
        self.directionButton.setTitle(directionLabel, for: .normal)
        
        // flip label
        let flipLabel : String = self.flip[number4]
        self.flipButton.setTitle(flipLabel, for: .normal)
        
        // create String
        if (directionLabel != "X") {
            name = name + " " + directionLabel
        }
        if (spinLabel != "X") {
            name = name + " " + spinLabel
        }
        if (flipLabel != "X") {
            name = name + " " + flipLabel
        }
        self.trickName.text = name
    }
    
    func style() {
        // trick name style
        self.trickName.layer.masksToBounds = true
        self.trickName.textAlignment = .center
        self.trickName.backgroundColor = UIColor(red:1.00, green:0.62, blue:0.11, alpha:1.0)
        self.trickName.layer.cornerRadius = 8
        self.trickName.textColor =
            UIColor(red:0.99, green:1.00, blue:0.99, alpha:1.0)
        
        // category style
        self.category.textAlignment = .center
        self.category.textColor = UIColor(red:0.00, green:0.09, blue:0.15, alpha:1.0)
        
        // dice style
        self.stanceButton.backgroundColor = UIColor(red:1.00, green:0.62, blue:0.11, alpha:1.0)
        self.stanceButton.layer.cornerRadius = 8
        
        self.spinButton.backgroundColor = UIColor(red:1.00, green:0.62, blue:0.11, alpha:1.0)
        self.spinButton.layer.cornerRadius = 8
        
        self.directionButton.backgroundColor = UIColor(red:1.00, green:0.62, blue:0.11, alpha:1.0)
        self.directionButton.layer.cornerRadius = 8
        
        self.flipButton.backgroundColor = UIColor(red:1.00, green:0.62, blue:0.11, alpha:1.0)
        self.flipButton.layer.cornerRadius = 8
        
        // roll style
        self.roll.backgroundColor = UIColor(red:1.00, green:0.62, blue:0.11, alpha:1.0)
        self.roll.layer.cornerRadius = 8
        self.roll.setTitleColor(UIColor(red:0.99, green:1.00, blue:0.99, alpha:1.0), for: .normal)
    }
}

