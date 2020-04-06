//
//  ViewController.swift
//  interfaceTest2
//
//  Created by Tim Yang on 4/6/20.
//  Copyright © 2020 Tim Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageview: UIImageView!
    
    @IBOutlet weak var rightImageview: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    var playerNum = 0
    var cpuNum = 0
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
        
        leftImageview.image = UIImage(named: "card\(leftNum)")
        rightImageview.image = UIImage(named: "card\(rightNum)")
        
        if leftNum > rightNum {
            playerNum += 1
            playerScore.text = String(playerNum)
        }
        else if leftNum < rightNum {
            cpuNum += 1
            cpuScore.text = String(cpuNum)
            
        }else{}
    
    
    }
    
    

    
    
}

