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
    
    
    var fight = ["rock", "rpaper", "rscissors"]
    
    var counter: Int = 0
    
    var randomNumber = Int.random(in: 0...2)
    
        
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
      
        chosenFighterImage.image = UIImage(named:"rock")
        
        //aiImage.image = fight(randomNumber)
        
        
        
        //counter += 1
            //if counter == 3
            //{
              //  counter = resetCounter()
                
                
                //currentLetter = letters[counter]
                //currentLetterLabel.text = currentLetter
        
    }
    
    
    @IBAction func choosePaperFighterButton(_ sender: Any)
    {
        chosenFighterImage.image = UIImage(named:"rpaper")
    }
    
    @IBAction func chooseScissorsFighterButton(_ sender: Any)
    {
        
        chosenFighterImage.image = UIImage(named:"rscissors")
        
    }
}

