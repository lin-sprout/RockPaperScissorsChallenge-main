//
//  ViewController.swift
//  RockPaperScissorsChallenge
//
//  Created by Lin LaMonte on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var aiImage: UIImageView!
    
    @IBOutlet weak var chosenFighterImage: UIImageView!
    
    @IBOutlet weak var chooseRockFighter: UIImageView!
    
    @IBOutlet weak var choosePaperFighter: UIImageView!
    
    @IBOutlet weak var chooseScissorsFighter: UIImageView!
    
    @IBOutlet weak var winnerOfCombatLabel: UILabel!
    
        
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chooseRockFighter.image = UIImage(named:"rock")
        choosePaperFighter.image = UIImage(named: "rpaper")
        chooseScissorsFighter.image = UIImage(named:"rscissors")
        
    }


    @IBAction func chooseRockFighterButton(_ sender: Any)
    {
    }
    
    @IBAction func choosePaperFighterButton(_ sender: Any)
    {
    }
    
    @IBAction func chooseScissorsFighterButton(_ sender: Any) {
    }
}

