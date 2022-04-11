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
    
    var counter: Int = 0
    
    var randomNumber = Int.random(in: 0...2)
    
    
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
        //for label in wordLabels
        //{
           // if
             //   label.frame.contains(selectedPoint)
            //{
              //  label.text = "\(currentLetter)"
            //}
        //}
        
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
        aiImage.image = UIImage(named:fight[randomNumber])
        
        
        
        //counter += 1
            //if counter == 3
            //{
              //  counter = resetCounter()
                
                
                //currentLetter = letters[counter]
                //currentLetterLabel.text = currentLetter
        
    }
    
    func resetCounter() -> Int
      {
          return 0
      }
    
    @IBAction func choosePaperFighterButton(_ sender: Any)
    {
        chosenFighterImage.image = UIImage(named:"rpaper")
        
        aiImage.image = UIImage(named:fight[randomNumber])
    
        counter += 1
            if counter == 3
            {
                counter = resetCounter()
                
            }
    }
    
    @IBAction func chooseScissorsFighterButton(_ sender: Any)
    {
        
        chosenFighterImage.image = UIImage(named:"rscissors")
        
        aiImage.image = UIImage(named:fight[randomNumber])
        
    }
}

