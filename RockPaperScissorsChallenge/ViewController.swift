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
    
    @IBOutlet weak var horzStackLike5: UIStackView!
    
    
    var fight = ["rock", "rpaper", "rscissors"]
    
    var fighters = ["rokc", "paper", "scissors"]
    
    var counter: Int = 0
    
    var randomNumber = Int.random(in: 0...2)

    var currentFighter = "rock"
    
    var nochosenFighter: Int = 400
    
    var fightA: String = ""
    var fightB: String = ""
        
    
    //let randO = fight[randomNumber]
    
    
        
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chooseRockFighter.image = UIImage(named:"rock")
        choosePaperFighter.image = UIImage(named: "rpaper")
        chooseScissorsFighter.image = UIImage(named:"rscissors")
        
    }


    @IBAction func tapTapTapTap(_ sender: Any)
    {
        let selectedPoint = ((sender as! AnyObject).location(in:horzStackLike5))
        
        // currentLetter = letters[counter]
        
        //currentLetterLabel.text = currentLetter
        
        
       // for label in fight
      //  {
          //  if
           //     label.frame.contains(selectedPoint)
          //  {
          //      label.image = "\(currentFighter)"
                
          //  }
       // }
        
   // counter += 1
     //   if counter == 26
       // {
         //   counter = resetCounter()
            //print(counter)
            
           // currentLetter = letters[counter]
            //currentLetterLabel.text = currentLetter
            //for label in self.wordLabels
            //{
                //label.text = "?"
            //}
        //}
        
    }
    
    
    @IBAction func chooseRockFighterButton(_ sender: Any)
    {
      
        chosenFighterImage.image = UIImage(named:"rock")
        
        //aiImage.image = fight(randomNumber)
      
        randomNumber = Int.random(in: 0...2)
        
        aiImage.image = UIImage(named:fight[randomNumber])

        aiImage.isHidden = false
        
        chosenFighterImage.isHidden = false
        
        nochosenFighter = 0
        
        
//        if aiImage == UIImage(named: "rock")
//        {
//            winnerOfCombatLabel.text = "You Have Tied"
//        }
        gloriousVictor(aiChoice: randomNumber, playersFighter: nochosenFighter)
        
    }
    
    @IBAction func choosePaperFighterButton(_ sender: Any)
    {
        chosenFighterImage.image = UIImage(named:"rpaper")
        
        randomNumber = Int.random(in: 0...2)
        
        aiImage.image = UIImage(named:fight[randomNumber])
        
        aiImage.isHidden = false
        
        chosenFighterImage.isHidden = false
        
        nochosenFighter = 1
    
//        if aiImage == UIImage(named: "rock")
//        {
//            winnerOfCombatLabel.text = "You Have Won"
//        }

        gloriousVictor(aiChoice: randomNumber, playersFighter: nochosenFighter)
        
    }
    
    @IBAction func chooseScissorsFighterButton(_ sender: Any)
    {
        
        chosenFighterImage.image = UIImage(named:"rscissors")
        
        randomNumber = Int.random(in: 0...2)
        
        aiImage.image = UIImage(named:fight[randomNumber])
        
        aiImage.isHidden = false
        
        chosenFighterImage.isHidden = false
        
        nochosenFighter = 2
        
        //user choice for rock = 0
        //user choice for paper = 1
        //user choice for scissors = 2
        
        
//        if aiImage == UIImage(named: "rock")
//        {
//            winnerOfCombatLabel.text = "You Have Lost"
//        }
        
        gloriousVictor(aiChoice: randomNumber, playersFighter: nochosenFighter)
        
    }
    
    func gloriousVictor (aiChoice: Int, playersFighter: Int)
    {
        
        
        
        if aiChoice == playersFighter
        {
            winnerOfCombatLabel.text = "You Have Tied"
        }
        else if aiChoice == 0 && playersFighter == 1
        {
            winnerOfCombatLabel.text = "You Have Won"
        }
        else if aiChoice == 0 && playersFighter == 2
        {
            winnerOfCombatLabel.text = "You Have Lost"
        }
        else if aiChoice == 1 && playersFighter == 0
        {
            winnerOfCombatLabel.text = "You Have Lost"
        }
        else if aiChoice == 1 && playersFighter == 2
        {
            winnerOfCombatLabel.text = "You Have Won"
        }
        else if aiChoice == 2 && playersFighter == 0
        {
            winnerOfCombatLabel.text = "You Have Won"
        }
        else if aiChoice == 2 && playersFighter == 1
        {
            winnerOfCombatLabel.text = "You Have Lost"
        }
                    
        
        
    }
    
    
    @IBAction func resetButton(_ sender: Any)
    {
        aiImage.isHidden = true
        
        chosenFighterImage.isHidden = true
        
        randomNumber = 4
        nochosenFighter = 4
        
        winnerOfCombatLabel.text = "Result:"
        
    }
    
}

